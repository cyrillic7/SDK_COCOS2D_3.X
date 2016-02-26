.class Lcom/baidu/sapi2/c$s;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/callback/GetHistoryPortraitsCallback;Lcom/baidu/sapi2/dto/GetHistoryPortraitsDTO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/result/GetHistoryPortraitsResult;

.field final synthetic b:Lcom/baidu/sapi2/callback/GetHistoryPortraitsCallback;

.field final synthetic c:Lcom/baidu/sapi2/dto/GetHistoryPortraitsDTO;

.field final synthetic d:Lcom/baidu/sapi2/c;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/c;Lcom/baidu/sapi2/result/GetHistoryPortraitsResult;Lcom/baidu/sapi2/callback/GetHistoryPortraitsCallback;Lcom/baidu/sapi2/dto/GetHistoryPortraitsDTO;)V
    .registers 5

    .prologue
    .line 1722
    iput-object p1, p0, Lcom/baidu/sapi2/c$s;->d:Lcom/baidu/sapi2/c;

    iput-object p2, p0, Lcom/baidu/sapi2/c$s;->a:Lcom/baidu/sapi2/result/GetHistoryPortraitsResult;

    iput-object p3, p0, Lcom/baidu/sapi2/c$s;->b:Lcom/baidu/sapi2/callback/GetHistoryPortraitsCallback;

    iput-object p4, p0, Lcom/baidu/sapi2/c$s;->c:Lcom/baidu/sapi2/dto/GetHistoryPortraitsDTO;

    invoke-direct {p0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 6
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 1725
    iget-object v0, p0, Lcom/baidu/sapi2/c$s;->d:Lcom/baidu/sapi2/c;

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/c$E;->c()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1726
    iget-object v0, p0, Lcom/baidu/sapi2/c$s;->d:Lcom/baidu/sapi2/c;

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/c$E;->d()V

    .line 1727
    iget-object v0, p0, Lcom/baidu/sapi2/c$s;->a:Lcom/baidu/sapi2/result/GetHistoryPortraitsResult;

    const/16 v1, -0xca

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/result/GetHistoryPortraitsResult;->setResultCode(I)V

    .line 1728
    iget-object v0, p0, Lcom/baidu/sapi2/c$s;->b:Lcom/baidu/sapi2/callback/GetHistoryPortraitsCallback;

    iget-object v1, p0, Lcom/baidu/sapi2/c$s;->a:Lcom/baidu/sapi2/result/GetHistoryPortraitsResult;

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/callback/GetHistoryPortraitsCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 1733
    :goto_23
    return-void

    .line 1730
    :cond_24
    iget-object v0, p0, Lcom/baidu/sapi2/c$s;->d:Lcom/baidu/sapi2/c;

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/c$E;->b()V

    .line 1731
    iget-object v0, p0, Lcom/baidu/sapi2/c$s;->d:Lcom/baidu/sapi2/c;

    iget-object v1, p0, Lcom/baidu/sapi2/c$s;->b:Lcom/baidu/sapi2/callback/GetHistoryPortraitsCallback;

    iget-object v2, p0, Lcom/baidu/sapi2/c$s;->c:Lcom/baidu/sapi2/dto/GetHistoryPortraitsDTO;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/callback/GetHistoryPortraitsCallback;Lcom/baidu/sapi2/dto/GetHistoryPortraitsDTO;)V

    goto :goto_23
.end method

.method public onSuccess(ILjava/lang/String;)V
    .registers 11
    .param p1, "statusCode"    # I
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 1737
    iget-object v6, p0, Lcom/baidu/sapi2/c$s;->d:Lcom/baidu/sapi2/c;

    invoke-static {v6}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v6

    invoke-virtual {v6}, Lcom/baidu/sapi2/c$E;->d()V

    .line 1739
    :try_start_9
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1740
    .local v4, "obj":Lorg/json/JSONObject;
    const-string v6, "errno"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1741
    .local v2, "errorNo":I
    iget-object v6, p0, Lcom/baidu/sapi2/c$s;->a:Lcom/baidu/sapi2/result/GetHistoryPortraitsResult;

    invoke-virtual {v6, v2}, Lcom/baidu/sapi2/result/GetHistoryPortraitsResult;->setResultCode(I)V

    .line 1742
    iget-object v6, p0, Lcom/baidu/sapi2/c$s;->a:Lcom/baidu/sapi2/result/GetHistoryPortraitsResult;

    const-string v7, "errmsg"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/baidu/sapi2/result/GetHistoryPortraitsResult;->setResultMsg(Ljava/lang/String;)V

    .line 1743
    if-nez v2, :cond_52

    .line 1744
    const-string v6, "history"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 1745
    .local v5, "portraits":Lorg/json/JSONArray;
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 1746
    .local v0, "arrLen":I
    iget-object v6, p0, Lcom/baidu/sapi2/c$s;->a:Lcom/baidu/sapi2/result/GetHistoryPortraitsResult;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, v6, Lcom/baidu/sapi2/result/GetHistoryPortraitsResult;->historyPortraits:Ljava/util/List;

    .line 1747
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3a
    if-ge v3, v0, :cond_4a

    .line 1748
    iget-object v6, p0, Lcom/baidu/sapi2/c$s;->a:Lcom/baidu/sapi2/result/GetHistoryPortraitsResult;

    iget-object v6, v6, Lcom/baidu/sapi2/result/GetHistoryPortraitsResult;->historyPortraits:Ljava/util/List;

    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1747
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 1751
    :cond_4a
    iget-object v6, p0, Lcom/baidu/sapi2/c$s;->b:Lcom/baidu/sapi2/callback/GetHistoryPortraitsCallback;

    iget-object v7, p0, Lcom/baidu/sapi2/c$s;->a:Lcom/baidu/sapi2/result/GetHistoryPortraitsResult;

    invoke-virtual {v6, v7}, Lcom/baidu/sapi2/callback/GetHistoryPortraitsCallback;->onSuccess(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 1760
    .end local v0    # "arrLen":I
    .end local v2    # "errorNo":I
    .end local v3    # "i":I
    .end local v4    # "obj":Lorg/json/JSONObject;
    .end local v5    # "portraits":Lorg/json/JSONArray;
    :goto_51
    return-void

    .line 1753
    .restart local v2    # "errorNo":I
    .restart local v4    # "obj":Lorg/json/JSONObject;
    :cond_52
    iget-object v6, p0, Lcom/baidu/sapi2/c$s;->b:Lcom/baidu/sapi2/callback/GetHistoryPortraitsCallback;

    iget-object v7, p0, Lcom/baidu/sapi2/c$s;->a:Lcom/baidu/sapi2/result/GetHistoryPortraitsResult;

    invoke-virtual {v6, v7}, Lcom/baidu/sapi2/callback/GetHistoryPortraitsCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V
    :try_end_59
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_59} :catch_5a

    goto :goto_51

    .line 1755
    .end local v2    # "errorNo":I
    .end local v4    # "obj":Lorg/json/JSONObject;
    :catch_5a
    move-exception v1

    .line 1756
    .local v1, "e":Lorg/json/JSONException;
    iget-object v6, p0, Lcom/baidu/sapi2/c$s;->a:Lcom/baidu/sapi2/result/GetHistoryPortraitsResult;

    const/16 v7, -0xca

    invoke-virtual {v6, v7}, Lcom/baidu/sapi2/result/GetHistoryPortraitsResult;->setResultCode(I)V

    .line 1757
    iget-object v6, p0, Lcom/baidu/sapi2/c$s;->b:Lcom/baidu/sapi2/callback/GetHistoryPortraitsCallback;

    iget-object v7, p0, Lcom/baidu/sapi2/c$s;->a:Lcom/baidu/sapi2/result/GetHistoryPortraitsResult;

    invoke-virtual {v6, v7}, Lcom/baidu/sapi2/callback/GetHistoryPortraitsCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 1758
    invoke-static {v1}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_51
.end method
