.class Lcom/baidu/sapi2/c$v;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/shell/callback/GetUserInfoCallBack;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/shell/callback/GetUserInfoCallBack;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/baidu/sapi2/c;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/c;Lcom/baidu/sapi2/shell/callback/GetUserInfoCallBack;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 1981
    iput-object p1, p0, Lcom/baidu/sapi2/c$v;->c:Lcom/baidu/sapi2/c;

    iput-object p2, p0, Lcom/baidu/sapi2/c$v;->a:Lcom/baidu/sapi2/shell/callback/GetUserInfoCallBack;

    iput-object p3, p0, Lcom/baidu/sapi2/c$v;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 6
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 2023
    iget-object v0, p0, Lcom/baidu/sapi2/c$v;->c:Lcom/baidu/sapi2/c;

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/c$E;->c()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2024
    iget-object v0, p0, Lcom/baidu/sapi2/c$v;->c:Lcom/baidu/sapi2/c;

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/c$E;->d()V

    .line 2025
    iget-object v0, p0, Lcom/baidu/sapi2/c$v;->a:Lcom/baidu/sapi2/shell/callback/GetUserInfoCallBack;

    invoke-virtual {v0}, Lcom/baidu/sapi2/shell/callback/GetUserInfoCallBack;->onFinish()V

    .line 2026
    iget-object v0, p0, Lcom/baidu/sapi2/c$v;->a:Lcom/baidu/sapi2/shell/callback/GetUserInfoCallBack;

    const/16 v1, -0x64

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/shell/callback/GetUserInfoCallBack;->onSystemError(I)V

    .line 2031
    :goto_21
    return-void

    .line 2028
    :cond_22
    iget-object v0, p0, Lcom/baidu/sapi2/c$v;->c:Lcom/baidu/sapi2/c;

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/c$E;->b()V

    .line 2029
    iget-object v0, p0, Lcom/baidu/sapi2/c$v;->c:Lcom/baidu/sapi2/c;

    iget-object v1, p0, Lcom/baidu/sapi2/c$v;->a:Lcom/baidu/sapi2/shell/callback/GetUserInfoCallBack;

    iget-object v2, p0, Lcom/baidu/sapi2/c$v;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/shell/callback/GetUserInfoCallBack;Ljava/lang/String;)V

    goto :goto_21
.end method

.method protected onSuccess(ILjava/lang/String;)V
    .registers 11
    .param p1, "statusCode"    # I
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 1985
    iget-object v5, p0, Lcom/baidu/sapi2/c$v;->c:Lcom/baidu/sapi2/c;

    invoke-static {v5}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/sapi2/c$E;->d()V

    .line 1986
    iget-object v5, p0, Lcom/baidu/sapi2/c$v;->a:Lcom/baidu/sapi2/shell/callback/GetUserInfoCallBack;

    invoke-virtual {v5}, Lcom/baidu/sapi2/shell/callback/GetUserInfoCallBack;->onFinish()V

    .line 1987
    iget-object v5, p0, Lcom/baidu/sapi2/c$v;->c:Lcom/baidu/sapi2/c;

    invoke-virtual {v5, p2}, Lcom/baidu/sapi2/c;->b(Ljava/lang/String;)I

    move-result v1

    .line 1988
    .local v1, "errorNo":I
    sparse-switch v1, :sswitch_data_98

    .line 2016
    iget-object v5, p0, Lcom/baidu/sapi2/c$v;->a:Lcom/baidu/sapi2/shell/callback/GetUserInfoCallBack;

    invoke-virtual {v5, v1}, Lcom/baidu/sapi2/shell/callback/GetUserInfoCallBack;->onSystemError(I)V

    .line 2019
    :goto_1c
    return-void

    .line 1991
    :sswitch_1d
    :try_start_1d
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1992
    .local v2, "obj":Lorg/json/JSONObject;
    new-instance v4, Lcom/baidu/sapi2/shell/response/GetUserInfoResponse;

    invoke-direct {v4}, Lcom/baidu/sapi2/shell/response/GetUserInfoResponse;-><init>()V

    .line 1993
    .local v4, "response":Lcom/baidu/sapi2/shell/response/GetUserInfoResponse;
    iput v1, v4, Lcom/baidu/sapi2/shell/response/GetUserInfoResponse;->errorCode:I

    .line 1994
    const-string v5, "errmsg"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/baidu/sapi2/shell/response/GetUserInfoResponse;->errorMsg:Ljava/lang/String;

    .line 1995
    const-string v5, "portrait"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1996
    .local v3, "portrait":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4b

    .line 1997
    const-string v5, "http://himg.bdimg.com/sys/portrait/item/%s.jpg"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/baidu/sapi2/shell/response/GetUserInfoResponse;->portrait:Ljava/lang/String;

    .line 2000
    :cond_4b
    const-string v5, "username"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/baidu/sapi2/shell/response/GetUserInfoResponse;->username:Ljava/lang/String;

    .line 2001
    const-string v5, "userid"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/baidu/sapi2/shell/response/GetUserInfoResponse;->uid:Ljava/lang/String;

    .line 2002
    const-string v5, "displayname"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/baidu/sapi2/shell/response/GetUserInfoResponse;->displayname:Ljava/lang/String;

    .line 2003
    const-string v5, "1"

    const-string v6, "incomplete_user"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/baidu/sapi2/shell/response/GetUserInfoResponse;->incompleteUser:Z

    .line 2004
    const-string v5, "securemobil"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/baidu/sapi2/shell/response/GetUserInfoResponse;->secureMobile:Ljava/lang/String;

    .line 2005
    const-string v5, "secureemail"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/baidu/sapi2/shell/response/GetUserInfoResponse;->secureEmail:Ljava/lang/String;

    .line 2006
    iget-object v5, p0, Lcom/baidu/sapi2/c$v;->a:Lcom/baidu/sapi2/shell/callback/GetUserInfoCallBack;

    invoke-virtual {v5, v4}, Lcom/baidu/sapi2/shell/callback/GetUserInfoCallBack;->onSuccess(Lcom/baidu/sapi2/shell/response/SapiResponse;)V
    :try_end_86
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_86} :catch_87

    goto :goto_1c

    .line 2007
    .end local v2    # "obj":Lorg/json/JSONObject;
    .end local v3    # "portrait":Ljava/lang/String;
    .end local v4    # "response":Lcom/baidu/sapi2/shell/response/GetUserInfoResponse;
    :catch_87
    move-exception v0

    .line 2008
    .local v0, "e":Lorg/json/JSONException;
    iget-object v5, p0, Lcom/baidu/sapi2/c$v;->a:Lcom/baidu/sapi2/shell/callback/GetUserInfoCallBack;

    invoke-virtual {v5, v1}, Lcom/baidu/sapi2/shell/callback/GetUserInfoCallBack;->onSystemError(I)V

    .line 2009
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_1c

    .line 2013
    .end local v0    # "e":Lorg/json/JSONException;
    :sswitch_91
    iget-object v5, p0, Lcom/baidu/sapi2/c$v;->a:Lcom/baidu/sapi2/shell/callback/GetUserInfoCallBack;

    invoke-virtual {v5}, Lcom/baidu/sapi2/shell/callback/GetUserInfoCallBack;->onBdussInvalid()V

    goto :goto_1c

    .line 1988
    nop

    :sswitch_data_98
    .sparse-switch
        0x0 -> :sswitch_1d
        0x61a95 -> :sswitch_91
    .end sparse-switch
.end method
