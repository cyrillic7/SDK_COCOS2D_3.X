.class final Lcom/baidu/sapi2/SapiCache$b;
.super Lcom/baidu/cloudsdk/common/http/JsonHttpResponseHandler;
.source "SapiCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/SapiCache;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 331
    invoke-direct {p0}, Lcom/baidu/cloudsdk/common/http/JsonHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lorg/json/JSONObject;)V
    .registers 16
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 334
    if-nez p1, :cond_3

    .line 420
    :cond_2
    return-void

    .line 337
    :cond_3
    invoke-static {}, Lcom/baidu/sapi2/SapiCache;->f()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/baidu/sapi2/d;->a(Landroid/content/Context;)Lcom/baidu/sapi2/d;

    move-result-object v9

    invoke-virtual {v9}, Lcom/baidu/sapi2/d;->j()Lcom/baidu/sapi2/b;

    move-result-object v8

    .line 338
    .local v8, "oldOptions":Lcom/baidu/sapi2/b;
    invoke-static {p1}, Lcom/baidu/sapi2/b;->a(Lorg/json/JSONObject;)Lcom/baidu/sapi2/b;

    move-result-object v6

    .line 339
    .local v6, "newOptions":Lcom/baidu/sapi2/b;
    invoke-virtual {v6}, Lcom/baidu/sapi2/b;->g()Lcom/baidu/sapi2/b$a;

    move-result-object v4

    .line 340
    .local v4, "newCache":Lcom/baidu/sapi2/b$a;
    invoke-static {}, Lcom/baidu/sapi2/SapiCache;->f()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/baidu/sapi2/d;->a(Landroid/content/Context;)Lcom/baidu/sapi2/d;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/baidu/sapi2/d;->a(Lcom/baidu/sapi2/b;)V

    .line 341
    invoke-static {}, Lcom/baidu/sapi2/share/b;->b()V

    .line 343
    invoke-static {}, Lcom/baidu/sapi2/SapiCache;->g()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 345
    invoke-virtual {v4}, Lcom/baidu/sapi2/b$a;->a()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 346
    invoke-virtual {v4}, Lcom/baidu/sapi2/b$a;->b()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/sapi2/b$a$a;

    .line 347
    .local v5, "newModule":Lcom/baidu/sapi2/b$a$a;
    invoke-static {}, Lcom/baidu/sapi2/SapiCache;->g()Ljava/util/List;

    move-result-object v9

    iget-object v10, v5, Lcom/baidu/sapi2/b$a$a;->a:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    .line 349
    .end local v5    # "newModule":Lcom/baidu/sapi2/b$a$a;
    :cond_50
    invoke-virtual {v4}, Lcom/baidu/sapi2/b$a;->b()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v1    # "i$":Ljava/util/Iterator;
    :goto_58
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/sapi2/b$a$a;

    .line 350
    .restart local v5    # "newModule":Lcom/baidu/sapi2/b$a$a;
    const/4 v7, 0x0

    .line 351
    .local v7, "oldModule":Lcom/baidu/sapi2/b$a$a;
    invoke-virtual {v8}, Lcom/baidu/sapi2/b;->g()Lcom/baidu/sapi2/b$a;

    move-result-object v9

    invoke-virtual {v9}, Lcom/baidu/sapi2/b$a;->b()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_71
    :goto_71
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_89

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/sapi2/b$a$a;

    .line 352
    .local v3, "m":Lcom/baidu/sapi2/b$a$a;
    iget-object v9, v3, Lcom/baidu/sapi2/b$a$a;->a:Ljava/lang/String;

    iget-object v10, v5, Lcom/baidu/sapi2/b$a$a;->a:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_71

    .line 353
    move-object v7, v3

    goto :goto_71

    .line 356
    .end local v3    # "m":Lcom/baidu/sapi2/b$a$a;
    :cond_89
    move-object v0, v7

    .line 358
    .local v0, "finalOldModule":Lcom/baidu/sapi2/b$a$a;
    new-instance v9, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v9}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    invoke-static {}, Lcom/baidu/sapi2/SapiCache;->f()Landroid/content/Context;

    move-result-object v10

    iget-object v11, v5, Lcom/baidu/sapi2/b$a$a;->b:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/sapi2/SapiCache;->c()Lcom/baidu/cloudsdk/common/http/RequestParams;

    move-result-object v12

    new-instance v13, Lcom/baidu/sapi2/SapiCache$b$a;

    invoke-direct {v13, p0, v5, v0, v6}, Lcom/baidu/sapi2/SapiCache$b$a;-><init>(Lcom/baidu/sapi2/SapiCache$b;Lcom/baidu/sapi2/b$a$a;Lcom/baidu/sapi2/b$a$a;Lcom/baidu/sapi2/b;)V

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    goto :goto_58
.end method
