.class Lcom/baidu/sapi2/c$i;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/baidu/sapi2/c;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/c;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 3398
    iput-object p1, p0, Lcom/baidu/sapi2/c$i;->e:Lcom/baidu/sapi2/c;

    iput-object p2, p0, Lcom/baidu/sapi2/c$i;->a:Ljava/lang/String;

    iput p3, p0, Lcom/baidu/sapi2/c$i;->b:I

    iput-object p4, p0, Lcom/baidu/sapi2/c$i;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/baidu/sapi2/c$i;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 8
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 3452
    iget-object v0, p0, Lcom/baidu/sapi2/c$i;->e:Lcom/baidu/sapi2/c;

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/c$E;->c()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3453
    iget-object v0, p0, Lcom/baidu/sapi2/c$i;->e:Lcom/baidu/sapi2/c;

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/c$E;->d()V

    .line 3458
    :goto_15
    return-void

    .line 3455
    :cond_16
    iget-object v0, p0, Lcom/baidu/sapi2/c$i;->e:Lcom/baidu/sapi2/c;

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/c$E;->b()V

    .line 3456
    iget-object v0, p0, Lcom/baidu/sapi2/c$i;->e:Lcom/baidu/sapi2/c;

    iget-object v1, p0, Lcom/baidu/sapi2/c$i;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/sapi2/c$i;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/sapi2/c$i;->a:Ljava/lang/String;

    iget v4, p0, Lcom/baidu/sapi2/c$i;->b:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/sapi2/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_15
.end method

.method protected onSuccess(ILjava/lang/String;)V
    .registers 10
    .param p1, "statusCode"    # I
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 3401
    iget-object v5, p0, Lcom/baidu/sapi2/c$i;->e:Lcom/baidu/sapi2/c;

    invoke-static {v5}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/c$E;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/sapi2/c$E;->d()V

    .line 3402
    iget-object v5, p0, Lcom/baidu/sapi2/c$i;->e:Lcom/baidu/sapi2/c;

    invoke-virtual {v5, p2}, Lcom/baidu/sapi2/c;->b(Ljava/lang/String;)I

    move-result v2

    .line 3403
    .local v2, "errorNo":I
    sparse-switch v2, :sswitch_data_7a

    .line 3448
    :goto_12
    return-void

    .line 3406
    :sswitch_13
    :try_start_13
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3407
    .local v4, "obj":Lorg/json/JSONObject;
    new-instance v0, Lcom/baidu/sapi2/SapiAccount;

    invoke-direct {v0}, Lcom/baidu/sapi2/SapiAccount;-><init>()V

    .line 3408
    .local v0, "account":Lcom/baidu/sapi2/SapiAccount;
    const-string v5, "bduss"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/baidu/sapi2/SapiAccount;->bduss:Ljava/lang/String;

    .line 3409
    const-string v5, "uid"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    .line 3410
    const-string v5, "displayname"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/baidu/sapi2/SapiAccount;->displayname:Ljava/lang/String;

    .line 3411
    const-string v5, "username"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/baidu/sapi2/SapiAccount;->username:Ljava/lang/String;

    .line 3412
    const-string v5, "ptoken"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/baidu/sapi2/SapiAccount;->ptoken:Ljava/lang/String;

    .line 3413
    const-string v5, "Web\u6d4f\u89c8\u5668"

    iput-object v5, v0, Lcom/baidu/sapi2/SapiAccount;->app:Ljava/lang/String;

    .line 3414
    invoke-static {}, Lcom/baidu/sapi2/share/b;->a()Lcom/baidu/sapi2/share/b;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Lcom/baidu/sapi2/share/b;->a(Lcom/baidu/sapi2/SapiAccount;Z)V

    .line 3417
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 3418
    .local v3, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "app"

    iget-object v6, v0, Lcom/baidu/sapi2/SapiAccount;->app:Ljava/lang/String;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3419
    const-string v5, "sync_type"

    iget-object v6, p0, Lcom/baidu/sapi2/c$i;->a:Ljava/lang/String;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3420
    const-string v5, "b2c_login_share"

    invoke-static {v5, v3}, Lcom/baidu/sapi2/utils/StatService;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_69
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_69} :catch_6a

    goto :goto_12

    .line 3421
    .end local v0    # "account":Lcom/baidu/sapi2/SapiAccount;
    .end local v3    # "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "obj":Lorg/json/JSONObject;
    :catch_6a
    move-exception v1

    .line 3422
    .local v1, "e":Lorg/json/JSONException;
    invoke-static {v1}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_12

    .line 3427
    .end local v1    # "e":Lorg/json/JSONException;
    :sswitch_6f
    iget-object v5, p0, Lcom/baidu/sapi2/c$i;->e:Lcom/baidu/sapi2/c;

    new-instance v6, Lcom/baidu/sapi2/c$i$a;

    invoke-direct {v6, p0}, Lcom/baidu/sapi2/c$i$a;-><init>(Lcom/baidu/sapi2/c$i;)V

    invoke-virtual {v5, v6}, Lcom/baidu/sapi2/c;->b(Lcom/baidu/sapi2/callback/SapiCallback;)V

    goto :goto_12

    .line 3403
    :sswitch_data_7a
    .sparse-switch
        0x0 -> :sswitch_13
        0x4 -> :sswitch_6f
    .end sparse-switch
.end method
