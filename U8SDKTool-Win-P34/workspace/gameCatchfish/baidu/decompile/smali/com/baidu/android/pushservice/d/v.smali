.class public Lcom/baidu/android/pushservice/d/v;
.super Lcom/baidu/android/pushservice/d/c;


# instance fields
.field protected e:Ljava/lang/String;

.field private f:Lcom/baidu/android/pushservice/e/o;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/baidu/android/pushservice/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/android/pushservice/e/o;Landroid/content/Context;)V
    .registers 9

    invoke-direct {p0, p1, p7}, Lcom/baidu/android/pushservice/d/c;-><init>(Lcom/baidu/android/pushservice/d/l;Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/android/pushservice/d/v;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/android/pushservice/d/v;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/android/pushservice/d/v;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/android/pushservice/d/v;->j:Ljava/lang/String;

    iput-object p2, p0, Lcom/baidu/android/pushservice/d/v;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/android/pushservice/d/v;->h:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/android/pushservice/d/v;->i:Ljava/lang/String;

    iput-object p5, p0, Lcom/baidu/android/pushservice/d/v;->j:Ljava/lang/String;

    iput-object p6, p0, Lcom/baidu/android/pushservice/d/v;->f:Lcom/baidu/android/pushservice/e/o;

    return-void
.end method


# virtual methods
.method protected a(I)V
    .registers 5

    invoke-super {p0, p1}, Lcom/baidu/android/pushservice/d/c;->a(I)V

    iget-object v0, p0, Lcom/baidu/android/pushservice/d/v;->f:Lcom/baidu/android/pushservice/e/o;

    if-eqz v0, :cond_18

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "details"

    iget-object v2, p0, Lcom/baidu/android/pushservice/d/v;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/baidu/android/pushservice/d/v;->f:Lcom/baidu/android/pushservice/e/o;

    invoke-interface {v1, p1, v0}, Lcom/baidu/android/pushservice/e/o;->a(ILjava/util/HashMap;)V

    :cond_18
    return-void
.end method

.method protected a(I[B)V
    .registers 6

    invoke-super {p0, p1, p2}, Lcom/baidu/android/pushservice/d/c;->a(I[B)V

    iget-object v0, p0, Lcom/baidu/android/pushservice/d/v;->f:Lcom/baidu/android/pushservice/e/o;

    if-eqz v0, :cond_18

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "details"

    iget-object v2, p0, Lcom/baidu/android/pushservice/d/v;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/baidu/android/pushservice/d/v;->f:Lcom/baidu/android/pushservice/e/o;

    invoke-interface {v1, p1, v0}, Lcom/baidu/android/pushservice/e/o;->a(ILjava/util/HashMap;)V

    :cond_18
    return-void
.end method

.method protected a(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/baidu/android/pushservice/d/c;->a(Ljava/util/List;)V

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "method"

    const-string v2, "lightapp_deltags"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "tags"

    iget-object v2, p0, Lcom/baidu/android/pushservice/d/v;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "cuid"

    iget-object v2, p0, Lcom/baidu/android/pushservice/d/v;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/frontia/a/e/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "csrftoken"

    iget-object v2, p0, Lcom/baidu/android/pushservice/d/v;->h:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "nonce"

    iget-object v2, p0, Lcom/baidu/android/pushservice/d/v;->i:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "referer"

    iget-object v2, p0, Lcom/baidu/android/pushservice/d/v;->j:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_59
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    const-string v2, "BaseApiProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lightapp_unsubscribe_service param -- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_59

    :cond_82
    return-void
.end method

.method protected b(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    invoke-super {p0, p1}, Lcom/baidu/android/pushservice/d/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "response_params"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "details"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/android/pushservice/d/v;->g:Ljava/lang/String;
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_1b} :catch_1c

    :goto_1b
    return-object v1

    :catch_1c
    move-exception v0

    const-string v2, "BaseApiProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b
.end method
