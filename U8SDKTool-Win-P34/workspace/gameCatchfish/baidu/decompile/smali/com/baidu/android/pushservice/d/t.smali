.class public Lcom/baidu/android/pushservice/d/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/android/pushservice/d/t$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Lcom/baidu/android/pushservice/e/d;

.field private e:I

.field private f:I

.field private g:Z

.field private h:Lcom/baidu/android/pushservice/d/t$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/android/pushservice/d/t$a;)V
    .registers 8

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/android/pushservice/z;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/lightapp/infosbykey/%s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/android/pushservice/d/t;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/android/pushservice/z;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/lightapp/infos/%s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/android/pushservice/d/t;->b:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, p0, Lcom/baidu/android/pushservice/d/t;->e:I

    iput v2, p0, Lcom/baidu/android/pushservice/d/t;->f:I

    iput-boolean v2, p0, Lcom/baidu/android/pushservice/d/t;->g:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/android/pushservice/d/t;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/baidu/android/pushservice/d/t;->h:Lcom/baidu/android/pushservice/d/t$a;

    new-instance v0, Lcom/baidu/android/pushservice/e/d;

    invoke-direct {v0, p2, p3}, Lcom/baidu/android/pushservice/e/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/android/pushservice/d/t;->d:Lcom/baidu/android/pushservice/e/d;

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .registers 11

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "state"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_e
    :goto_e
    return v0

    :cond_f
    const-string v2, "state"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "api_key"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "logo"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_8e

    const-string v6, "thumbnails"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_8e

    iget-object v7, p0, Lcom/baidu/android/pushservice/d/t;->d:Lcom/baidu/android/pushservice/e/d;

    const-string v8, "L"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/baidu/android/pushservice/e/d;->f(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/baidu/android/pushservice/d/t;->d:Lcom/baidu/android/pushservice/e/d;

    const-string v8, "M"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/baidu/android/pushservice/e/d;->g(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/baidu/android/pushservice/d/t;->d:Lcom/baidu/android/pushservice/e/d;

    const-string v8, "S"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/baidu/android/pushservice/e/d;->h(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/baidu/android/pushservice/d/t;->d:Lcom/baidu/android/pushservice/e/d;

    const-string v8, "XL"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/baidu/android/pushservice/e/d;->i(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/baidu/android/pushservice/d/t;->c:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->densityDpi:I

    sparse-switch v7, :sswitch_data_106

    const/16 v8, 0xf0

    if-le v7, v8, :cond_f9

    iget-object v7, p0, Lcom/baidu/android/pushservice/d/t;->d:Lcom/baidu/android/pushservice/e/d;

    const-string v8, "XL"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/baidu/android/pushservice/e/d;->d(Ljava/lang/String;)V

    :cond_8e
    :goto_8e
    iget-object v6, p0, Lcom/baidu/android/pushservice/d/t;->d:Lcom/baidu/android/pushservice/e/d;

    invoke-virtual {v6, v3}, Lcom/baidu/android/pushservice/e/d;->b(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/baidu/android/pushservice/d/t;->d:Lcom/baidu/android/pushservice/e/d;

    invoke-virtual {v3, v4}, Lcom/baidu/android/pushservice/e/d;->c(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/baidu/android/pushservice/d/t;->d:Lcom/baidu/android/pushservice/e/d;

    invoke-virtual {v3, v2}, Lcom/baidu/android/pushservice/e/d;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/baidu/android/pushservice/d/t;->d:Lcom/baidu/android/pushservice/e/d;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/android/pushservice/e/d;->e(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/baidu/android/pushservice/d/t;->d:Lcom/baidu/android/pushservice/e/d;

    const-string v3, "allow_shortcut"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/baidu/android/pushservice/e/d;->a(Z)V

    const/4 v0, 0x1

    goto/16 :goto_e

    :sswitch_b4
    iget-object v7, p0, Lcom/baidu/android/pushservice/d/t;->d:Lcom/baidu/android/pushservice/e/d;

    const-string v8, "S"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/baidu/android/pushservice/e/d;->d(Ljava/lang/String;)V
    :try_end_bf
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_bf} :catch_c0

    goto :goto_8e

    :catch_c0
    move-exception v1

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "GetLightAppInfoRequester"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GetLightAppInfo e : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/frontia/a/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    :sswitch_e1
    :try_start_e1
    iget-object v7, p0, Lcom/baidu/android/pushservice/d/t;->d:Lcom/baidu/android/pushservice/e/d;

    const-string v8, "M"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/baidu/android/pushservice/e/d;->d(Ljava/lang/String;)V

    goto :goto_8e

    :sswitch_ed
    iget-object v7, p0, Lcom/baidu/android/pushservice/d/t;->d:Lcom/baidu/android/pushservice/e/d;

    const-string v8, "L"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/baidu/android/pushservice/e/d;->d(Ljava/lang/String;)V

    goto :goto_8e

    :cond_f9
    iget-object v7, p0, Lcom/baidu/android/pushservice/d/t;->d:Lcom/baidu/android/pushservice/e/d;

    const-string v8, "S"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/baidu/android/pushservice/e/d;->d(Ljava/lang/String;)V
    :try_end_104
    .catch Lorg/json/JSONException; {:try_start_e1 .. :try_end_104} :catch_c0

    goto :goto_8e

    nop

    :sswitch_data_106
    .sparse-switch
        0x78 -> :sswitch_b4
        0xa0 -> :sswitch_e1
        0xf0 -> :sswitch_ed
    .end sparse-switch
.end method

.method private b()Z
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/baidu/android/pushservice/d/t;->d:Lcom/baidu/android/pushservice/e/d;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/e/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_97

    iget-object v0, p0, Lcom/baidu/android/pushservice/d/t;->a:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/baidu/android/pushservice/d/t;->d:Lcom/baidu/android/pushservice/e/d;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/e/d;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1e
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v2

    if-eqz v2, :cond_3c

    const-string v2, "GetLightAppInfoRequester"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLightAppInfo request url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3c
    new-instance v2, Lcom/baidu/frontia/a/c/c;

    iget-object v3, p0, Lcom/baidu/android/pushservice/d/t;->c:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/baidu/frontia/a/c/c;-><init>(Landroid/content/Context;)V

    :try_start_43
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const-string v0, "Content-Type"

    const-string v4, "application/json;charset=UTF-8"

    invoke-virtual {v3, v0, v4}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/baidu/frontia/a/c/c;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    if-eqz v0, :cond_a9

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    if-eqz v3, :cond_a9

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_a9

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    const-string v3, "utf-8"

    invoke-static {v0, v3}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v3

    if-eqz v3, :cond_8f

    const-string v3, "GetLightAppInfoRequester"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLightAppInfo return string :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/frontia/a/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8f
    invoke-direct {p0, v0}, Lcom/baidu/android/pushservice/d/t;->a(Ljava/lang/String;)Z
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_92} :catch_b4
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_92} :catch_de
    .catchall {:try_start_43 .. :try_end_92} :catchall_108

    move-result v0

    invoke-virtual {v2}, Lcom/baidu/frontia/a/c/c;->a()V

    :goto_96
    return v0

    :cond_97
    iget-object v0, p0, Lcom/baidu/android/pushservice/d/t;->b:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/baidu/android/pushservice/d/t;->d:Lcom/baidu/android/pushservice/e/d;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/e/d;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1e

    :cond_a9
    const/4 v0, 0x0

    :try_start_aa
    iput v0, p0, Lcom/baidu/android/pushservice/d/t;->f:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/android/pushservice/d/t;->g:Z
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_af} :catch_b4
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_af} :catch_de
    .catchall {:try_start_aa .. :try_end_af} :catchall_108

    invoke-virtual {v2}, Lcom/baidu/frontia/a/c/c;->a()V

    :goto_b2
    move v0, v1

    goto :goto_96

    :catch_b4
    move-exception v0

    :try_start_b5
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v3

    if-eqz v3, :cond_d7

    const-string v3, "GetLightAppInfoRequester"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/android/pushservice/d/t;->g:Z
    :try_end_da
    .catchall {:try_start_b5 .. :try_end_da} :catchall_108

    invoke-virtual {v2}, Lcom/baidu/frontia/a/c/c;->a()V

    goto :goto_b2

    :catch_de
    move-exception v0

    :try_start_df
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v3

    if-eqz v3, :cond_101

    const-string v3, "GetLightAppInfoRequester"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/android/pushservice/d/t;->g:Z
    :try_end_104
    .catchall {:try_start_df .. :try_end_104} :catchall_108

    invoke-virtual {v2}, Lcom/baidu/frontia/a/c/c;->a()V

    goto :goto_b2

    :catchall_108
    move-exception v0

    invoke-virtual {v2}, Lcom/baidu/frontia/a/c/c;->a()V

    throw v0
.end method

.method private c()V
    .registers 5

    iget v0, p0, Lcom/baidu/android/pushservice/d/t;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/android/pushservice/d/t;->f:I

    iget v0, p0, Lcom/baidu/android/pushservice/d/t;->f:I

    iget v1, p0, Lcom/baidu/android/pushservice/d/t;->e:I

    if-ge v0, v1, :cond_52

    const/4 v0, 0x1

    iget v1, p0, Lcom/baidu/android/pushservice/d/t;->f:I

    add-int/lit8 v1, v1, -0x1

    shl-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x5

    mul-int/lit16 v0, v0, 0x3e8

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v1

    if-eqz v1, :cond_40

    const-string v1, "GetLightAppInfoRequester"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "schedule retry-- retry times: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/baidu/android/pushservice/d/t;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "time delay: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/frontia/a/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_40
    int-to-long v0, v0

    :try_start_41
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_44
    .catch Ljava/lang/InterruptedException; {:try_start_41 .. :try_end_44} :catch_45

    :cond_44
    :goto_44
    return-void

    :catch_45
    move-exception v0

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v1

    if-eqz v1, :cond_44

    const-string v1, "GetLightAppInfoRequester"

    invoke-static {v1, v0}, Lcom/baidu/frontia/a/b/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_44

    :cond_52
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v0

    if-eqz v0, :cond_78

    const-string v0, "GetLightAppInfoRequester"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hava reconnect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/baidu/android/pushservice/d/t;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " times, all failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/frontia/a/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/android/pushservice/d/t;->g:Z

    goto :goto_44
.end method


# virtual methods
.method protected a()V
    .registers 6

    const/4 v4, 0x0

    :cond_1
    invoke-direct {p0}, Lcom/baidu/android/pushservice/d/t;->b()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v1, p0, Lcom/baidu/android/pushservice/d/t;->d:Lcom/baidu/android/pushservice/e/d;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/e/d;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_26

    iget-object v1, p0, Lcom/baidu/android/pushservice/d/t;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/android/pushservice/d/t;->d:Lcom/baidu/android/pushservice/e/d;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/e/d;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/android/pushservice/d/t;->d:Lcom/baidu/android/pushservice/e/d;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/e/d;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v4}, Lcom/baidu/android/pushservice/e/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)[B

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/android/pushservice/d/t;->d:Lcom/baidu/android/pushservice/e/d;

    invoke-virtual {v2, v1}, Lcom/baidu/android/pushservice/e/d;->a([B)V

    :cond_26
    iget-boolean v1, p0, Lcom/baidu/android/pushservice/d/t;->g:Z

    if-eqz v1, :cond_2d

    invoke-direct {p0}, Lcom/baidu/android/pushservice/d/t;->c()V

    :cond_2d
    iget-object v1, p0, Lcom/baidu/android/pushservice/d/t;->h:Lcom/baidu/android/pushservice/d/t$a;

    if-eqz v1, :cond_3a

    iput v4, p0, Lcom/baidu/android/pushservice/d/t;->e:I

    iget-object v1, p0, Lcom/baidu/android/pushservice/d/t;->h:Lcom/baidu/android/pushservice/d/t$a;

    iget-object v2, p0, Lcom/baidu/android/pushservice/d/t;->d:Lcom/baidu/android/pushservice/e/d;

    invoke-interface {v1, v0, v2}, Lcom/baidu/android/pushservice/d/t$a;->a(ZLcom/baidu/android/pushservice/e/d;)V

    :cond_3a
    iget v1, p0, Lcom/baidu/android/pushservice/d/t;->e:I

    if-lez v1, :cond_42

    iget-boolean v1, p0, Lcom/baidu/android/pushservice/d/t;->g:Z

    if-nez v1, :cond_1

    :cond_42
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v1

    if-eqz v1, :cond_60

    const-string v1, "GetLightAppInfoRequester"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetLightAppInfoRequester connectResult: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/frontia/a/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_60
    return-void
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/android/pushservice/d/t;->e:I

    return-void
.end method

.method public run()V
    .registers 1

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/t;->a()V

    return-void
.end method
