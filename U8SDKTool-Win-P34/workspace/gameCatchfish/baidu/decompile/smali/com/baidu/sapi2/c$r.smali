.class Lcom/baidu/sapi2/c$r;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/callback/GetPopularPortraitsCallback;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/callback/GetPopularPortraitsCallback;

.field final synthetic b:Lcom/baidu/sapi2/result/GetPopularPortraitsInfoResult;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/baidu/sapi2/c;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/c;Lcom/baidu/sapi2/callback/GetPopularPortraitsCallback;Lcom/baidu/sapi2/result/GetPopularPortraitsInfoResult;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 1786
    iput-object p1, p0, Lcom/baidu/sapi2/c$r;->d:Lcom/baidu/sapi2/c;

    iput-object p2, p0, Lcom/baidu/sapi2/c$r;->a:Lcom/baidu/sapi2/callback/GetPopularPortraitsCallback;

    iput-object p3, p0, Lcom/baidu/sapi2/c$r;->b:Lcom/baidu/sapi2/result/GetPopularPortraitsInfoResult;

    iput-object p4, p0, Lcom/baidu/sapi2/c$r;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 6
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 1799
    iget-object v0, p0, Lcom/baidu/sapi2/c$r;->d:Lcom/baidu/sapi2/c;

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/c$E;->c()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1800
    iget-object v0, p0, Lcom/baidu/sapi2/c$r;->d:Lcom/baidu/sapi2/c;

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/c$E;->d()V

    .line 1801
    iget-object v0, p0, Lcom/baidu/sapi2/c$r;->b:Lcom/baidu/sapi2/result/GetPopularPortraitsInfoResult;

    const/16 v1, -0xca

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/result/GetPopularPortraitsInfoResult;->setResultCode(I)V

    .line 1802
    iget-object v0, p0, Lcom/baidu/sapi2/c$r;->a:Lcom/baidu/sapi2/callback/GetPopularPortraitsCallback;

    iget-object v1, p0, Lcom/baidu/sapi2/c$r;->b:Lcom/baidu/sapi2/result/GetPopularPortraitsInfoResult;

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/callback/GetPopularPortraitsCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 1807
    :goto_23
    return-void

    .line 1804
    :cond_24
    iget-object v0, p0, Lcom/baidu/sapi2/c$r;->d:Lcom/baidu/sapi2/c;

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/c$E;->b()V

    .line 1805
    iget-object v0, p0, Lcom/baidu/sapi2/c$r;->d:Lcom/baidu/sapi2/c;

    iget-object v1, p0, Lcom/baidu/sapi2/c$r;->a:Lcom/baidu/sapi2/callback/GetPopularPortraitsCallback;

    iget-object v2, p0, Lcom/baidu/sapi2/c$r;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/callback/GetPopularPortraitsCallback;Ljava/lang/String;)V

    goto :goto_23
.end method

.method public onFinish()V
    .registers 2

    .prologue
    .line 1794
    iget-object v0, p0, Lcom/baidu/sapi2/c$r;->a:Lcom/baidu/sapi2/callback/GetPopularPortraitsCallback;

    invoke-virtual {v0}, Lcom/baidu/sapi2/callback/GetPopularPortraitsCallback;->onFinish()V

    .line 1795
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 1789
    iget-object v0, p0, Lcom/baidu/sapi2/c$r;->a:Lcom/baidu/sapi2/callback/GetPopularPortraitsCallback;

    invoke-virtual {v0}, Lcom/baidu/sapi2/callback/GetPopularPortraitsCallback;->onStart()V

    .line 1790
    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .registers 13
    .param p1, "statusCode"    # I
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 1811
    iget-object v8, p0, Lcom/baidu/sapi2/c$r;->d:Lcom/baidu/sapi2/c;

    invoke-static {v8}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v8

    invoke-virtual {v8}, Lcom/baidu/sapi2/c$E;->d()V

    .line 1813
    :try_start_9
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1814
    .local v7, "obj":Lorg/json/JSONObject;
    const-string v8, "errno"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 1815
    .local v1, "errno":I
    iget-object v8, p0, Lcom/baidu/sapi2/c$r;->b:Lcom/baidu/sapi2/result/GetPopularPortraitsInfoResult;

    invoke-virtual {v8, v1}, Lcom/baidu/sapi2/result/GetPopularPortraitsInfoResult;->setResultCode(I)V

    .line 1816
    iget-object v8, p0, Lcom/baidu/sapi2/c$r;->b:Lcom/baidu/sapi2/result/GetPopularPortraitsInfoResult;

    const-string v9, "errmsg"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/baidu/sapi2/result/GetPopularPortraitsInfoResult;->setResultMsg(Ljava/lang/String;)V

    .line 1817
    if-nez v1, :cond_79

    .line 1818
    const-string v8, "list"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 1819
    .local v4, "infoList":Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 1820
    .local v5, "infoListLen":I
    iget-object v8, p0, Lcom/baidu/sapi2/c$r;->b:Lcom/baidu/sapi2/result/GetPopularPortraitsInfoResult;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v9, v8, Lcom/baidu/sapi2/result/GetPopularPortraitsInfoResult;->popularPortraitsInfoList:Ljava/util/List;

    .line 1822
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3a
    if-ge v2, v5, :cond_71

    .line 1823
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1824
    .local v3, "info":Lorg/json/JSONObject;
    if-eqz v3, :cond_6e

    .line 1825
    new-instance v6, Lcom/baidu/sapi2/result/GetPopularPortraitsInfoResult$PopularPortraitsInfo;

    invoke-direct {v6}, Lcom/baidu/sapi2/result/GetPopularPortraitsInfoResult$PopularPortraitsInfo;-><init>()V

    .line 1827
    .local v6, "item":Lcom/baidu/sapi2/result/GetPopularPortraitsInfoResult$PopularPortraitsInfo;
    const-string v8, "num"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v6, Lcom/baidu/sapi2/result/GetPopularPortraitsInfoResult$PopularPortraitsInfo;->num:I

    .line 1828
    const-string v8, "serie"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/baidu/sapi2/result/GetPopularPortraitsInfoResult$PopularPortraitsInfo;->series:Ljava/lang/String;

    .line 1829
    const-string v8, "url"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/baidu/sapi2/result/GetPopularPortraitsInfoResult$PopularPortraitsInfo;->url:Ljava/lang/String;

    .line 1830
    const-string v8, "myitem"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v6, Lcom/baidu/sapi2/result/GetPopularPortraitsInfoResult$PopularPortraitsInfo;->myItem:I

    .line 1831
    iget-object v8, p0, Lcom/baidu/sapi2/c$r;->b:Lcom/baidu/sapi2/result/GetPopularPortraitsInfoResult;

    iget-object v8, v8, Lcom/baidu/sapi2/result/GetPopularPortraitsInfoResult;->popularPortraitsInfoList:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1822
    .end local v6    # "item":Lcom/baidu/sapi2/result/GetPopularPortraitsInfoResult$PopularPortraitsInfo;
    :cond_6e
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    .line 1835
    .end local v3    # "info":Lorg/json/JSONObject;
    :cond_71
    iget-object v8, p0, Lcom/baidu/sapi2/c$r;->a:Lcom/baidu/sapi2/callback/GetPopularPortraitsCallback;

    iget-object v9, p0, Lcom/baidu/sapi2/c$r;->b:Lcom/baidu/sapi2/result/GetPopularPortraitsInfoResult;

    invoke-virtual {v8, v9}, Lcom/baidu/sapi2/callback/GetPopularPortraitsCallback;->onSuccess(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 1844
    .end local v1    # "errno":I
    .end local v2    # "i":I
    .end local v4    # "infoList":Lorg/json/JSONArray;
    .end local v5    # "infoListLen":I
    .end local v7    # "obj":Lorg/json/JSONObject;
    :goto_78
    return-void

    .line 1837
    .restart local v1    # "errno":I
    .restart local v7    # "obj":Lorg/json/JSONObject;
    :cond_79
    iget-object v8, p0, Lcom/baidu/sapi2/c$r;->a:Lcom/baidu/sapi2/callback/GetPopularPortraitsCallback;

    iget-object v9, p0, Lcom/baidu/sapi2/c$r;->b:Lcom/baidu/sapi2/result/GetPopularPortraitsInfoResult;

    invoke-virtual {v8, v9}, Lcom/baidu/sapi2/callback/GetPopularPortraitsCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V
    :try_end_80
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_80} :catch_81

    goto :goto_78

    .line 1839
    .end local v1    # "errno":I
    .end local v7    # "obj":Lorg/json/JSONObject;
    :catch_81
    move-exception v0

    .line 1840
    .local v0, "e":Lorg/json/JSONException;
    iget-object v8, p0, Lcom/baidu/sapi2/c$r;->b:Lcom/baidu/sapi2/result/GetPopularPortraitsInfoResult;

    const/16 v9, -0xca

    invoke-virtual {v8, v9}, Lcom/baidu/sapi2/result/GetPopularPortraitsInfoResult;->setResultCode(I)V

    .line 1841
    iget-object v8, p0, Lcom/baidu/sapi2/c$r;->a:Lcom/baidu/sapi2/callback/GetPopularPortraitsCallback;

    iget-object v9, p0, Lcom/baidu/sapi2/c$r;->b:Lcom/baidu/sapi2/result/GetPopularPortraitsInfoResult;

    invoke-virtual {v8, v9}, Lcom/baidu/sapi2/callback/GetPopularPortraitsCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 1842
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_78
.end method
