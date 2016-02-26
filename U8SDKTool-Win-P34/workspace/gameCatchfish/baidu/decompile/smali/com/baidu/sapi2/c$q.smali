.class Lcom/baidu/sapi2/c$q;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/callback/SetPopularPortraitCallback;Lcom/baidu/sapi2/dto/SetPopularPortraitDTO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/result/SetPopularPortraitResult;

.field final synthetic b:Lcom/baidu/sapi2/callback/SetPopularPortraitCallback;

.field final synthetic c:Lcom/baidu/sapi2/dto/SetPopularPortraitDTO;

.field final synthetic d:Lcom/baidu/sapi2/c;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/c;Lcom/baidu/sapi2/result/SetPopularPortraitResult;Lcom/baidu/sapi2/callback/SetPopularPortraitCallback;Lcom/baidu/sapi2/dto/SetPopularPortraitDTO;)V
    .registers 5

    .prologue
    .line 1549
    iput-object p1, p0, Lcom/baidu/sapi2/c$q;->d:Lcom/baidu/sapi2/c;

    iput-object p2, p0, Lcom/baidu/sapi2/c$q;->a:Lcom/baidu/sapi2/result/SetPopularPortraitResult;

    iput-object p3, p0, Lcom/baidu/sapi2/c$q;->b:Lcom/baidu/sapi2/callback/SetPopularPortraitCallback;

    iput-object p4, p0, Lcom/baidu/sapi2/c$q;->c:Lcom/baidu/sapi2/dto/SetPopularPortraitDTO;

    invoke-direct {p0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 6
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 1552
    iget-object v0, p0, Lcom/baidu/sapi2/c$q;->d:Lcom/baidu/sapi2/c;

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/c$E;->c()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1553
    iget-object v0, p0, Lcom/baidu/sapi2/c$q;->d:Lcom/baidu/sapi2/c;

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/c$E;->d()V

    .line 1554
    iget-object v0, p0, Lcom/baidu/sapi2/c$q;->a:Lcom/baidu/sapi2/result/SetPopularPortraitResult;

    const/16 v1, -0xca

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/result/SetPopularPortraitResult;->setResultCode(I)V

    .line 1555
    iget-object v0, p0, Lcom/baidu/sapi2/c$q;->b:Lcom/baidu/sapi2/callback/SetPopularPortraitCallback;

    iget-object v1, p0, Lcom/baidu/sapi2/c$q;->a:Lcom/baidu/sapi2/result/SetPopularPortraitResult;

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/callback/SetPopularPortraitCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 1560
    :goto_23
    return-void

    .line 1557
    :cond_24
    iget-object v0, p0, Lcom/baidu/sapi2/c$q;->d:Lcom/baidu/sapi2/c;

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/c$E;->b()V

    .line 1558
    iget-object v0, p0, Lcom/baidu/sapi2/c$q;->d:Lcom/baidu/sapi2/c;

    iget-object v1, p0, Lcom/baidu/sapi2/c$q;->b:Lcom/baidu/sapi2/callback/SetPopularPortraitCallback;

    iget-object v2, p0, Lcom/baidu/sapi2/c$q;->c:Lcom/baidu/sapi2/dto/SetPopularPortraitDTO;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/callback/SetPopularPortraitCallback;Lcom/baidu/sapi2/dto/SetPopularPortraitDTO;)V

    goto :goto_23
.end method

.method public onFinish()V
    .registers 2

    .prologue
    .line 1589
    iget-object v0, p0, Lcom/baidu/sapi2/c$q;->b:Lcom/baidu/sapi2/callback/SetPopularPortraitCallback;

    invoke-virtual {v0}, Lcom/baidu/sapi2/callback/SetPopularPortraitCallback;->onFinish()V

    .line 1590
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 1584
    iget-object v0, p0, Lcom/baidu/sapi2/c$q;->b:Lcom/baidu/sapi2/callback/SetPopularPortraitCallback;

    invoke-virtual {v0}, Lcom/baidu/sapi2/callback/SetPopularPortraitCallback;->onStart()V

    .line 1585
    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .registers 8
    .param p1, "statusCode"    # I
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 1564
    iget-object v3, p0, Lcom/baidu/sapi2/c$q;->d:Lcom/baidu/sapi2/c;

    invoke-static {v3}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/sapi2/c$E;->d()V

    .line 1566
    :try_start_9
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1567
    .local v2, "obj":Lorg/json/JSONObject;
    const-string v3, "errno"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1568
    .local v1, "errorNo":I
    iget-object v3, p0, Lcom/baidu/sapi2/c$q;->a:Lcom/baidu/sapi2/result/SetPopularPortraitResult;

    invoke-virtual {v3, v1}, Lcom/baidu/sapi2/result/SetPopularPortraitResult;->setResultCode(I)V

    .line 1569
    iget-object v3, p0, Lcom/baidu/sapi2/c$q;->a:Lcom/baidu/sapi2/result/SetPopularPortraitResult;

    const-string v4, "errmsg"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baidu/sapi2/result/SetPopularPortraitResult;->setResultMsg(Ljava/lang/String;)V

    .line 1570
    if-nez v1, :cond_2e

    .line 1571
    iget-object v3, p0, Lcom/baidu/sapi2/c$q;->b:Lcom/baidu/sapi2/callback/SetPopularPortraitCallback;

    iget-object v4, p0, Lcom/baidu/sapi2/c$q;->a:Lcom/baidu/sapi2/result/SetPopularPortraitResult;

    invoke-virtual {v3, v4}, Lcom/baidu/sapi2/callback/SetPopularPortraitCallback;->onSuccess(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 1580
    .end local v1    # "errorNo":I
    .end local v2    # "obj":Lorg/json/JSONObject;
    :goto_2d
    return-void

    .line 1573
    .restart local v1    # "errorNo":I
    .restart local v2    # "obj":Lorg/json/JSONObject;
    :cond_2e
    iget-object v3, p0, Lcom/baidu/sapi2/c$q;->b:Lcom/baidu/sapi2/callback/SetPopularPortraitCallback;

    iget-object v4, p0, Lcom/baidu/sapi2/c$q;->a:Lcom/baidu/sapi2/result/SetPopularPortraitResult;

    invoke-virtual {v3, v4}, Lcom/baidu/sapi2/callback/SetPopularPortraitCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V
    :try_end_35
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_35} :catch_36

    goto :goto_2d

    .line 1575
    .end local v1    # "errorNo":I
    .end local v2    # "obj":Lorg/json/JSONObject;
    :catch_36
    move-exception v0

    .line 1576
    .local v0, "e":Lorg/json/JSONException;
    iget-object v3, p0, Lcom/baidu/sapi2/c$q;->a:Lcom/baidu/sapi2/result/SetPopularPortraitResult;

    const/16 v4, -0xca

    invoke-virtual {v3, v4}, Lcom/baidu/sapi2/result/SetPopularPortraitResult;->setResultCode(I)V

    .line 1577
    iget-object v3, p0, Lcom/baidu/sapi2/c$q;->b:Lcom/baidu/sapi2/callback/SetPopularPortraitCallback;

    iget-object v4, p0, Lcom/baidu/sapi2/c$q;->a:Lcom/baidu/sapi2/result/SetPopularPortraitResult;

    invoke-virtual {v3, v4}, Lcom/baidu/sapi2/callback/SetPopularPortraitCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 1578
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_2d
.end method
