.class Lcom/baidu/sapi2/c$u;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/callback/GetUserInfoCallback;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/callback/GetUserInfoCallback;

.field final synthetic b:Lcom/baidu/sapi2/result/GetUserInfoResult;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/baidu/sapi2/c;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/c;Lcom/baidu/sapi2/callback/GetUserInfoCallback;Lcom/baidu/sapi2/result/GetUserInfoResult;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 1882
    iput-object p1, p0, Lcom/baidu/sapi2/c$u;->d:Lcom/baidu/sapi2/c;

    iput-object p2, p0, Lcom/baidu/sapi2/c$u;->a:Lcom/baidu/sapi2/callback/GetUserInfoCallback;

    iput-object p3, p0, Lcom/baidu/sapi2/c$u;->b:Lcom/baidu/sapi2/result/GetUserInfoResult;

    iput-object p4, p0, Lcom/baidu/sapi2/c$u;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 6
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 1936
    iget-object v0, p0, Lcom/baidu/sapi2/c$u;->d:Lcom/baidu/sapi2/c;

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/c$E;->c()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1937
    iget-object v0, p0, Lcom/baidu/sapi2/c$u;->d:Lcom/baidu/sapi2/c;

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/c$E;->d()V

    .line 1938
    iget-object v0, p0, Lcom/baidu/sapi2/c$u;->b:Lcom/baidu/sapi2/result/GetUserInfoResult;

    const/16 v1, -0xca

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/result/GetUserInfoResult;->setResultCode(I)V

    .line 1939
    iget-object v0, p0, Lcom/baidu/sapi2/c$u;->a:Lcom/baidu/sapi2/callback/GetUserInfoCallback;

    iget-object v1, p0, Lcom/baidu/sapi2/c$u;->b:Lcom/baidu/sapi2/result/GetUserInfoResult;

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/callback/GetUserInfoCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 1944
    :goto_23
    return-void

    .line 1941
    :cond_24
    iget-object v0, p0, Lcom/baidu/sapi2/c$u;->d:Lcom/baidu/sapi2/c;

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/c$E;->b()V

    .line 1942
    iget-object v0, p0, Lcom/baidu/sapi2/c$u;->d:Lcom/baidu/sapi2/c;

    iget-object v1, p0, Lcom/baidu/sapi2/c$u;->a:Lcom/baidu/sapi2/callback/GetUserInfoCallback;

    iget-object v2, p0, Lcom/baidu/sapi2/c$u;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/callback/GetUserInfoCallback;Ljava/lang/String;)V

    goto :goto_23
.end method

.method protected onFinish()V
    .registers 2

    .prologue
    .line 1891
    iget-object v0, p0, Lcom/baidu/sapi2/c$u;->a:Lcom/baidu/sapi2/callback/GetUserInfoCallback;

    invoke-virtual {v0}, Lcom/baidu/sapi2/callback/GetUserInfoCallback;->onFinish()V

    .line 1892
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 1886
    iget-object v0, p0, Lcom/baidu/sapi2/c$u;->a:Lcom/baidu/sapi2/callback/GetUserInfoCallback;

    invoke-virtual {v0}, Lcom/baidu/sapi2/callback/GetUserInfoCallback;->onStart()V

    .line 1887
    return-void
.end method

.method protected onSuccess(ILjava/lang/String;)V
    .registers 12
    .param p1, "statusCode"    # I
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 1896
    iget-object v4, p0, Lcom/baidu/sapi2/c$u;->d:Lcom/baidu/sapi2/c;

    invoke-static {v4}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/sapi2/c$E;->d()V

    .line 1897
    iget-object v4, p0, Lcom/baidu/sapi2/c$u;->d:Lcom/baidu/sapi2/c;

    invoke-virtual {v4, p2}, Lcom/baidu/sapi2/c;->b(Ljava/lang/String;)I

    move-result v3

    .line 1898
    .local v3, "resultCode":I
    iget-object v4, p0, Lcom/baidu/sapi2/c$u;->b:Lcom/baidu/sapi2/result/GetUserInfoResult;

    invoke-virtual {v4, v3}, Lcom/baidu/sapi2/result/GetUserInfoResult;->setResultCode(I)V

    .line 1899
    sparse-switch v3, :sswitch_data_d0

    .line 1929
    iget-object v4, p0, Lcom/baidu/sapi2/c$u;->a:Lcom/baidu/sapi2/callback/GetUserInfoCallback;

    iget-object v5, p0, Lcom/baidu/sapi2/c$u;->b:Lcom/baidu/sapi2/result/GetUserInfoResult;

    invoke-virtual {v4, v5}, Lcom/baidu/sapi2/callback/GetUserInfoCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 1932
    :goto_1e
    return-void

    .line 1902
    :sswitch_1f
    :try_start_1f
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1903
    .local v1, "obj":Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/baidu/sapi2/c$u;->b:Lcom/baidu/sapi2/result/GetUserInfoResult;

    const-string v5, "portrait_tag"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/baidu/sapi2/result/GetUserInfoResult;->portraitSign:Ljava/lang/String;

    .line 1904
    iget-object v4, p0, Lcom/baidu/sapi2/c$u;->b:Lcom/baidu/sapi2/result/GetUserInfoResult;

    const-string v5, "0"

    iget-object v6, p0, Lcom/baidu/sapi2/c$u;->b:Lcom/baidu/sapi2/result/GetUserInfoResult;

    iget-object v6, v6, Lcom/baidu/sapi2/result/GetUserInfoResult;->portraitSign:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/baidu/sapi2/result/GetUserInfoResult;->isInitialPortrait:Z

    .line 1905
    const-string v4, "portrait"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1906
    .local v2, "portrait":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5f

    .line 1907
    iget-object v4, p0, Lcom/baidu/sapi2/c$u;->b:Lcom/baidu/sapi2/result/GetUserInfoResult;

    const-string v5, "http://himg.bdimg.com/sys/portrait/item/%s.jpg?%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/baidu/sapi2/c$u;->b:Lcom/baidu/sapi2/result/GetUserInfoResult;

    iget-object v8, v8, Lcom/baidu/sapi2/result/GetUserInfoResult;->portraitSign:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/baidu/sapi2/result/GetUserInfoResult;->portrait:Ljava/lang/String;

    .line 1912
    :cond_5f
    iget-object v4, p0, Lcom/baidu/sapi2/c$u;->b:Lcom/baidu/sapi2/result/GetUserInfoResult;

    const-string v5, "username"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/baidu/sapi2/result/GetUserInfoResult;->username:Ljava/lang/String;

    .line 1913
    iget-object v4, p0, Lcom/baidu/sapi2/c$u;->b:Lcom/baidu/sapi2/result/GetUserInfoResult;

    const-string v5, "userid"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/baidu/sapi2/result/GetUserInfoResult;->uid:Ljava/lang/String;

    .line 1914
    iget-object v4, p0, Lcom/baidu/sapi2/c$u;->b:Lcom/baidu/sapi2/result/GetUserInfoResult;

    const-string v5, "displayname"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/baidu/sapi2/result/GetUserInfoResult;->displayname:Ljava/lang/String;

    .line 1915
    iget-object v4, p0, Lcom/baidu/sapi2/c$u;->b:Lcom/baidu/sapi2/result/GetUserInfoResult;

    const-string v5, "1"

    const-string v6, "incomplete_user"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/baidu/sapi2/result/GetUserInfoResult;->incompleteUser:Z

    .line 1916
    iget-object v4, p0, Lcom/baidu/sapi2/c$u;->b:Lcom/baidu/sapi2/result/GetUserInfoResult;

    const-string v5, "securemobil"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/baidu/sapi2/result/GetUserInfoResult;->secureMobile:Ljava/lang/String;

    .line 1917
    iget-object v4, p0, Lcom/baidu/sapi2/c$u;->b:Lcom/baidu/sapi2/result/GetUserInfoResult;

    const-string v5, "secureemail"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/baidu/sapi2/result/GetUserInfoResult;->secureEmail:Ljava/lang/String;

    .line 1918
    iget-object v4, p0, Lcom/baidu/sapi2/c$u;->b:Lcom/baidu/sapi2/result/GetUserInfoResult;

    const-string v5, "1"

    const-string v6, "have_psw"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/baidu/sapi2/result/GetUserInfoResult;->havePwd:Z

    .line 1919
    iget-object v4, p0, Lcom/baidu/sapi2/c$u;->a:Lcom/baidu/sapi2/callback/GetUserInfoCallback;

    iget-object v5, p0, Lcom/baidu/sapi2/c$u;->b:Lcom/baidu/sapi2/result/GetUserInfoResult;

    invoke-virtual {v4, v5}, Lcom/baidu/sapi2/callback/GetUserInfoCallback;->onSuccess(Lcom/baidu/sapi2/result/SapiResult;)V
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_b8} :catch_ba

    goto/16 :goto_1e

    .line 1920
    .end local v1    # "obj":Lorg/json/JSONObject;
    .end local v2    # "portrait":Ljava/lang/String;
    :catch_ba
    move-exception v0

    .line 1921
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/baidu/sapi2/c$u;->a:Lcom/baidu/sapi2/callback/GetUserInfoCallback;

    iget-object v5, p0, Lcom/baidu/sapi2/c$u;->b:Lcom/baidu/sapi2/result/GetUserInfoResult;

    invoke-virtual {v4, v5}, Lcom/baidu/sapi2/callback/GetUserInfoCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 1922
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 1926
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_c7
    iget-object v4, p0, Lcom/baidu/sapi2/c$u;->a:Lcom/baidu/sapi2/callback/GetUserInfoCallback;

    iget-object v5, p0, Lcom/baidu/sapi2/c$u;->b:Lcom/baidu/sapi2/result/GetUserInfoResult;

    invoke-virtual {v4, v5}, Lcom/baidu/sapi2/callback/GetUserInfoCallback;->onBdussExpired(Lcom/baidu/sapi2/result/SapiResult;)V

    goto/16 :goto_1e

    .line 1899
    :sswitch_data_d0
    .sparse-switch
        0x0 -> :sswitch_1f
        0x61a95 -> :sswitch_c7
    .end sparse-switch
.end method
