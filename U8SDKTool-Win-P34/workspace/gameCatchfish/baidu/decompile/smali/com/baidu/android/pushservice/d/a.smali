.class public abstract Lcom/baidu/android/pushservice/d/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lcom/baidu/android/pushservice/d/l;

.field protected c:Ljava/lang/String;

.field protected d:Z


# direct methods
.method public constructor <init>(Lcom/baidu/android/pushservice/d/l;Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/android/pushservice/d/a;->d:Z

    iput-object p1, p0, Lcom/baidu/android/pushservice/d/a;->b:Lcom/baidu/android/pushservice/d/l;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/android/pushservice/d/a;->a:Landroid/content/Context;

    invoke-static {}, Lcom/baidu/android/pushservice/z;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/android/pushservice/d/a;->c:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .registers 7

    :try_start_0
    new-instance v0, Lcom/baidu/android/pushservice/f/j;

    invoke-direct {v0}, Lcom/baidu/android/pushservice/f/j;-><init>()V

    iput-object p1, v0, Lcom/baidu/android/pushservice/f/j;->g:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/baidu/android/pushservice/f/j;->h:J

    iget-object v1, p0, Lcom/baidu/android/pushservice/d/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/frontia/a/d/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/android/pushservice/f/j;->i:Ljava/lang/String;

    iput p2, v0, Lcom/baidu/android/pushservice/f/j;->j:I

    iget-object v1, p0, Lcom/baidu/android/pushservice/d/a;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/f/t;->b(Landroid/content/Context;Lcom/baidu/android/pushservice/f/j;)J
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    :cond_1c
    :goto_1c
    return-void

    :catch_1d
    move-exception v0

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "AbstractProcessor"

    const-string v1, "insertHttpBehavior exception"

    invoke-static {v0, v1}, Lcom/baidu/frontia/a/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c
.end method

.method private b(I)I
    .registers 10

    const/16 v3, 0x2712

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez p1, :cond_77

    iget-object v4, p0, Lcom/baidu/android/pushservice/d/a;->a:Landroid/content/Context;

    if-ne p1, v1, :cond_12

    move v0, v1

    :goto_b
    invoke-static {v4, v0}, Lcom/baidu/android/pushservice/z;->b(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    :goto_11
    return v3

    :cond_12
    move v0, v2

    goto :goto_b

    :cond_14
    iget-object v4, p0, Lcom/baidu/android/pushservice/d/a;->c:Ljava/lang/String;

    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_77

    iget-object v4, p0, Lcom/baidu/android/pushservice/d/a;->c:Ljava/lang/String;

    const-string v5, "http://"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/baidu/android/pushservice/d/a;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/android/pushservice/d/a;->c:Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_3c

    iget-object v5, p0, Lcom/baidu/android/pushservice/d/a;->c:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/baidu/android/pushservice/d/a;->c:Ljava/lang/String;

    :cond_3c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/baidu/android/pushservice/d/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/android/pushservice/d/a;->c:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v0

    if-eqz v0, :cond_77

    const-string v0, "AbstractProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " --- abstract request URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/android/pushservice/d/a;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_77
    new-instance v4, Lcom/baidu/frontia/a/c/c;

    iget-object v0, p0, Lcom/baidu/android/pushservice/d/a;->a:Landroid/content/Context;

    invoke-direct {v4, v0}, Lcom/baidu/frontia/a/c/c;-><init>(Landroid/content/Context;)V

    :try_start_7e
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    iget-object v5, p0, Lcom/baidu/android/pushservice/d/a;->c:Ljava/lang/String;

    invoke-direct {v0, v5}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    const-string v5, "Content-Type"

    const-string v6, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v5, v6}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Host"

    const-string v6, "api.tuisong.baidu.com"

    invoke-virtual {v0, v5, v6}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v5}, Lcom/baidu/android/pushservice/d/a;->a(Ljava/util/List;)V

    new-instance v6, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v7, "UTF-8"

    invoke-direct {v6, v5, v7}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-virtual {v4, v0}, Lcom/baidu/frontia/a/c/c;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_ed

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v1

    if-eqz v1, :cond_db

    const-string v1, "AbstractProcessor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<<< networkRegister return string :  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/baidu/frontia/a/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_db
    invoke-virtual {p0, v0}, Lcom/baidu/android/pushservice/d/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/baidu/android/pushservice/d/a;->a(I[B)V
    :try_end_e7
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_e7} :catch_148
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_e7} :catch_16d
    .catchall {:try_start_7e .. :try_end_e7} :catchall_190

    :goto_e7
    invoke-virtual {v4}, Lcom/baidu/frontia/a/c/c;->a()V

    :goto_ea
    move v3, v2

    goto/16 :goto_11

    :cond_ed
    :try_start_ed
    const-string v5, "AbstractProcessor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "networkRegister request failed  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baidu/frontia/a/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    const/16 v6, 0x1f7

    if-ne v5, v6, :cond_116

    move v2, v1

    :cond_116
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v5

    if-eqz v5, :cond_13c

    const-string v5, "AbstractProcessor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<<< networkRegister return string :  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baidu/frontia/a/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13c
    invoke-virtual {p0, v1}, Lcom/baidu/android/pushservice/d/a;->a(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_146
    .catch Ljava/io/IOException; {:try_start_ed .. :try_end_146} :catch_148
    .catch Ljava/lang/Exception; {:try_start_ed .. :try_end_146} :catch_16d
    .catchall {:try_start_ed .. :try_end_146} :catchall_190

    move-result v2

    goto :goto_e7

    :catch_148
    move-exception v0

    :try_start_149
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v1

    if-eqz v1, :cond_15f

    const-string v1, "AbstractProcessor"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AbstractProcessor"

    const-string v1, "io exception do something ? "

    invoke-static {v0, v1}, Lcom/baidu/frontia/a/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15f
    const/4 v0, 0x2

    if-lt p1, v0, :cond_167

    const/16 v0, 0x2712

    invoke-virtual {p0, v0}, Lcom/baidu/android/pushservice/d/a;->a(I)V
    :try_end_167
    .catchall {:try_start_149 .. :try_end_167} :catchall_190

    :cond_167
    invoke-virtual {v4}, Lcom/baidu/frontia/a/c/c;->a()V

    move v2, v3

    goto/16 :goto_ea

    :catch_16d
    move-exception v0

    :try_start_16e
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v1

    if-eqz v1, :cond_17d

    const-string v1, "AbstractProcessor"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17d
    if-eqz v2, :cond_18a

    const/16 v0, 0x2713

    invoke-virtual {p0, v0}, Lcom/baidu/android/pushservice/d/a;->a(I)V
    :try_end_184
    .catchall {:try_start_16e .. :try_end_184} :catchall_190

    :goto_184
    const/4 v2, -0x1

    invoke-virtual {v4}, Lcom/baidu/frontia/a/c/c;->a()V

    goto/16 :goto_ea

    :cond_18a
    const/16 v0, 0x4e21

    :try_start_18c
    invoke-virtual {p0, v0}, Lcom/baidu/android/pushservice/d/a;->a(I)V
    :try_end_18f
    .catchall {:try_start_18c .. :try_end_18f} :catchall_190

    goto :goto_184

    :catchall_190
    move-exception v0

    invoke-virtual {v4}, Lcom/baidu/frontia/a/c/c;->a()V

    throw v0
.end method

.method private b(I[B)V
    .registers 7

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.baidu.android.pushservice.action.internal.RECEIVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "method"

    iget-object v2, p0, Lcom/baidu/android/pushservice/d/a;->b:Lcom/baidu/android/pushservice/d/l;

    iget-object v2, v2, Lcom/baidu/android/pushservice/d/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "error_msg"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "content"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v1, "appid"

    iget-object v2, p0, Lcom/baidu/android/pushservice/d/a;->b:Lcom/baidu/android/pushservice/d/l;

    iget-object v2, v2, Lcom/baidu/android/pushservice/d/l;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/baidu/android/pushservice/d/a;->a(Landroid/content/Intent;)V

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v1

    if-eqz v1, :cond_66

    const-string v1, "AbstractProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "> sendInternalMethodResult  ,method:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/android/pushservice/d/a;->b:Lcom/baidu/android/pushservice/d/l;

    iget-object v3, v3, Lcom/baidu/android/pushservice/d/l;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,errorCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,content : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_66
    iget-object v1, p0, Lcom/baidu/android/pushservice/d/a;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private c(Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x5

    new-array v3, v2, [Ljava/lang/String;

    const-string v2, "method_deal_lapp_bind_intent"

    aput-object v2, v3, v1

    const-string v2, "method_lapp_unbind"

    aput-object v2, v3, v0

    const/4 v2, 0x2

    const-string v4, "method_set_lapp_tags"

    aput-object v4, v3, v2

    const/4 v2, 0x3

    const-string v4, "method_del_lapp_tags"

    aput-object v4, v3, v2

    const/4 v2, 0x4

    const-string v4, "method_list_lapp_tags"

    aput-object v4, v3, v2

    array-length v4, v3

    move v2, v1

    :goto_1e
    if-ge v2, v4, :cond_2c

    aget-object v5, v3, v2

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    :goto_28
    return v0

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_2c
    move v0, v1

    goto :goto_28
.end method


# virtual methods
.method protected a()V
    .registers 5

    iget-object v0, p0, Lcom/baidu/android/pushservice/d/a;->b:Lcom/baidu/android/pushservice/d/l;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/baidu/android/pushservice/d/a;->b:Lcom/baidu/android/pushservice/d/l;

    iget-object v0, v0, Lcom/baidu/android/pushservice/d/l;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/baidu/android/pushservice/d/a;->b:Lcom/baidu/android/pushservice/d/l;

    iget-object v0, v0, Lcom/baidu/android/pushservice/d/l;->a:Ljava/lang/String;

    const-string v1, "com.baidu.android.pushservice.action.UNBIND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    iget-object v0, p0, Lcom/baidu/android/pushservice/d/a;->b:Lcom/baidu/android/pushservice/d/l;

    iget-object v0, v0, Lcom/baidu/android/pushservice/d/l;->a:Ljava/lang/String;

    const-string v1, "method_deal_webapp_bind_intent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    iget-object v0, p0, Lcom/baidu/android/pushservice/d/a;->b:Lcom/baidu/android/pushservice/d/l;

    iget-object v0, v0, Lcom/baidu/android/pushservice/d/l;->a:Ljava/lang/String;

    const-string v1, "method_deal_lapp_bind_intent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    iget-object v0, p0, Lcom/baidu/android/pushservice/d/a;->b:Lcom/baidu/android/pushservice/d/l;

    iget-object v0, v0, Lcom/baidu/android/pushservice/d/l;->a:Ljava/lang/String;

    const-string v1, "method_sdk_unbind"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    iget-object v0, p0, Lcom/baidu/android/pushservice/d/a;->b:Lcom/baidu/android/pushservice/d/l;

    iget-object v0, v0, Lcom/baidu/android/pushservice/d/l;->a:Ljava/lang/String;

    const-string v1, "method_lapp_unbind"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    iget-object v0, p0, Lcom/baidu/android/pushservice/d/a;->b:Lcom/baidu/android/pushservice/d/l;

    iget-object v0, v0, Lcom/baidu/android/pushservice/d/l;->a:Ljava/lang/String;

    const-string v1, "method_set_lapp_tags"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    iget-object v0, p0, Lcom/baidu/android/pushservice/d/a;->b:Lcom/baidu/android/pushservice/d/l;

    iget-object v0, v0, Lcom/baidu/android/pushservice/d/l;->a:Ljava/lang/String;

    const-string v1, "method_del_lapp_tags"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    iget-object v0, p0, Lcom/baidu/android/pushservice/d/a;->b:Lcom/baidu/android/pushservice/d/l;

    iget-object v0, v0, Lcom/baidu/android/pushservice/d/l;->a:Ljava/lang/String;

    const-string v1, "method_list_lapp_tags"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    iget-object v0, p0, Lcom/baidu/android/pushservice/d/a;->b:Lcom/baidu/android/pushservice/d/l;

    iget-object v0, v0, Lcom/baidu/android/pushservice/d/l;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    :cond_79
    iget-object v0, p0, Lcom/baidu/android/pushservice/d/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/frontia/a/c/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a7

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v0

    if-eqz v0, :cond_8e

    const-string v0, "AbstractProcessor"

    const-string v1, "Network is not useful!"

    invoke-static {v0, v1}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8e
    const/16 v0, 0x2711

    invoke-virtual {p0, v0}, Lcom/baidu/android/pushservice/d/a;->a(I)V

    iget-object v0, p0, Lcom/baidu/android/pushservice/d/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/util/f;->l(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "AbstractProcessor"

    const-string v1, "startPushService BaseApiProcess"

    invoke-static {v0, v1}, Lcom/baidu/frontia/a/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_a7
    invoke-static {}, Lcom/baidu/android/pushservice/ad;->a()Lcom/baidu/android/pushservice/ad;

    move-result-object v1

    monitor-enter v1

    :try_start_ac
    iget-boolean v0, p0, Lcom/baidu/android/pushservice/d/a;->d:Z

    if-eqz v0, :cond_d9

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/ad;->e()Z

    move-result v0

    if-nez v0, :cond_d9

    iget-object v0, p0, Lcom/baidu/android/pushservice/d/a;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/baidu/android/pushservice/ad;->a(Landroid/content/Context;Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/android/pushservice/d/a;->d:Z
    :try_end_bf
    .catchall {:try_start_ac .. :try_end_bf} :catchall_eb

    :goto_bf
    :try_start_bf
    invoke-virtual {v1}, Lcom/baidu/android/pushservice/ad;->b()Z

    move-result v0

    if-nez v0, :cond_d9

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_c8
    .catch Ljava/lang/InterruptedException; {:try_start_bf .. :try_end_c8} :catch_c9
    .catchall {:try_start_bf .. :try_end_c8} :catchall_eb

    goto :goto_bf

    :catch_c9
    move-exception v0

    :try_start_ca
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v2

    if-eqz v2, :cond_d9

    const-string v2, "AbstractProcessor"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d9
    monitor-exit v1
    :try_end_da
    .catchall {:try_start_ca .. :try_end_da} :catchall_eb

    invoke-static {}, Lcom/baidu/android/pushservice/ad;->a()Lcom/baidu/android/pushservice/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/ad;->e()Z

    move-result v0

    if-nez v0, :cond_ee

    const/16 v0, 0x2712

    invoke-virtual {p0, v0}, Lcom/baidu/android/pushservice/d/a;->a(I)V

    goto/16 :goto_e

    :catchall_eb
    move-exception v0

    :try_start_ec
    monitor-exit v1
    :try_end_ed
    .catchall {:try_start_ec .. :try_end_ed} :catchall_eb

    throw v0

    :cond_ee
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->b()Z

    move-result v0

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "AbstractProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "netWorkConnect connectResult: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/frontia/a/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e
.end method

.method protected a(I)V
    .registers 3

    invoke-static {p1}, Lcom/baidu/android/pushservice/PushConstants;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/android/pushservice/d/a;->a(I[B)V

    return-void
.end method

.method protected a(I[B)V
    .registers 11

    iget-object v0, p0, Lcom/baidu/android/pushservice/d/a;->b:Lcom/baidu/android/pushservice/d/l;

    iget-object v0, v0, Lcom/baidu/android/pushservice/d/l;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/baidu/android/pushservice/d/a;->b:Lcom/baidu/android/pushservice/d/l;

    iget-object v0, v0, Lcom/baidu/android/pushservice/d/l;->b:Ljava/lang/String;

    const-string v1, "internal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-direct {p0, p1, p2}, Lcom/baidu/android/pushservice/d/a;->b(I[B)V

    :cond_19
    :goto_19
    return-void

    :cond_1a
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/baidu/android/pushservice/d/a;->b:Lcom/baidu/android/pushservice/d/l;

    iget-object v0, v0, Lcom/baidu/android/pushservice/d/l;->a:Ljava/lang/String;

    const-string v1, "method_deal_webapp_bind_intent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_178

    const-string v0, "com.baidu.android.pushservice.action.web.RECEIVE"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_30
    const-string v0, "method"

    iget-object v1, p0, Lcom/baidu/android/pushservice/d/a;->b:Lcom/baidu/android/pushservice/d/l;

    iget-object v1, v1, Lcom/baidu/android/pushservice/d/l;->a:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "error_msg"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "content"

    invoke-virtual {v2, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const/16 v0, 0x20

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/baidu/android/pushservice/d/a;->a(Landroid/content/Intent;)V

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/baidu/android/pushservice/d/a;->b:Lcom/baidu/android/pushservice/d/l;

    iget-object v0, v0, Lcom/baidu/android/pushservice/d/l;->a:Ljava/lang/String;

    const-string v3, "method_bind"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_220

    const-string v0, "access_token"

    iget-object v3, p0, Lcom/baidu/android/pushservice/d/a;->b:Lcom/baidu/android/pushservice/d/l;

    iget-object v3, v3, Lcom/baidu/android/pushservice/d/l;->d:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "secret_key"

    iget-object v3, p0, Lcom/baidu/android/pushservice/d/a;->b:Lcom/baidu/android/pushservice/d/l;

    iget-object v3, v3, Lcom/baidu/android/pushservice/d/l;->i:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "real_bind"

    const-string v3, "real_bind"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v3, Lcom/baidu/android/pushservice/f/c;

    invoke-direct {v3}, Lcom/baidu/android/pushservice/f/c;-><init>()V

    const-string v0, "020101"

    iput-object v0, v3, Lcom/baidu/android/pushservice/f/c;->g:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/baidu/android/pushservice/f/c;->h:J

    iget-object v0, p0, Lcom/baidu/android/pushservice/d/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/frontia/a/d/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/baidu/android/pushservice/f/c;->i:Ljava/lang/String;

    new-instance v0, Lcom/baidu/android/pushservice/f/k;

    invoke-direct {v0}, Lcom/baidu/android/pushservice/f/k;-><init>()V

    :try_start_8d
    new-instance v4, Lorg/json/JSONObject;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "request_id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/baidu/android/pushservice/f/c;->b:Ljava/lang/String;

    if-eqz p1, :cond_a9

    const-string v5, "error_msg"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/baidu/android/pushservice/f/c;->a:Ljava/lang/String;

    :cond_a9
    const-string v5, "response_params"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "appid"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/android/pushservice/d/a;->a:Landroid/content/Context;

    invoke-static {v6}, Lcom/baidu/android/pushservice/c/b;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/c/b;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/baidu/android/pushservice/c/b;->b(Ljava/lang/String;)Lcom/baidu/android/pushservice/c/h;

    move-result-object v6

    iput-object v5, v3, Lcom/baidu/android/pushservice/f/c;->k:Ljava/lang/String;

    const-string v7, "response_params"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v7, "user_id"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/f/k;->a(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/baidu/android/pushservice/util/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/f/k;->c(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/baidu/android/pushservice/f/k;->b(Ljava/lang/String;)V

    if-eqz v6, :cond_ed

    invoke-virtual {v6}, Lcom/baidu/android/pushservice/c/h;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/baidu/android/pushservice/f/k;->d(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/baidu/android/pushservice/d/a;->a:Landroid/content/Context;

    invoke-virtual {v6}, Lcom/baidu/android/pushservice/c/h;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcom/baidu/android/pushservice/util/f;->a(Lcom/baidu/android/pushservice/f/k;Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/android/pushservice/f/k;
    :try_end_ec
    .catch Lorg/json/JSONException; {:try_start_8d .. :try_end_ec} :catch_1d5

    move-result-object v0

    :cond_ed
    :goto_ed
    iput p1, v3, Lcom/baidu/android/pushservice/f/c;->j:I

    :try_start_ef
    iget-object v4, p0, Lcom/baidu/android/pushservice/d/a;->a:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/baidu/android/pushservice/f/t;->a(Landroid/content/Context;Lcom/baidu/android/pushservice/f/c;)J

    if-nez v1, :cond_fb

    iget-object v1, p0, Lcom/baidu/android/pushservice/d/a;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/f/t;->a(Landroid/content/Context;Lcom/baidu/android/pushservice/f/k;)J
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_fb} :catch_201

    :cond_fb
    :goto_fb
    iget-object v0, p0, Lcom/baidu/android/pushservice/d/a;->b:Lcom/baidu/android/pushservice/d/l;

    iget-object v0, v0, Lcom/baidu/android/pushservice/d/l;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10f

    iget-object v0, p0, Lcom/baidu/android/pushservice/d/a;->b:Lcom/baidu/android/pushservice/d/l;

    iget-object v0, v0, Lcom/baidu/android/pushservice/d/l;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/baidu/android/pushservice/d/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_10f
    iget-object v0, p0, Lcom/baidu/android/pushservice/d/a;->b:Lcom/baidu/android/pushservice/d/l;

    iget-object v0, v0, Lcom/baidu/android/pushservice/d/l;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/baidu/android/pushservice/d/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_120

    iget-object v0, p0, Lcom/baidu/android/pushservice/d/a;->b:Lcom/baidu/android/pushservice/d/l;

    iget-object v0, v0, Lcom/baidu/android/pushservice/d/l;->e:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_120
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v0

    if-eqz v0, :cond_169

    const-string v0, "AbstractProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "> sendResult to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/baidu/android/pushservice/d/a;->b:Lcom/baidu/android/pushservice/d/l;

    iget-object v3, v3, Lcom/baidu/android/pushservice/d/l;->i:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ,method:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/baidu/android/pushservice/d/a;->b:Lcom/baidu/android/pushservice/d/l;

    iget-object v3, v3, Lcom/baidu/android/pushservice/d/l;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ,errorCode : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ,content : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_169
    iget-object v0, p0, Lcom/baidu/android/pushservice/d/a;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/baidu/android/pushservice/d/a;->b:Lcom/baidu/android/pushservice/d/l;

    iget-object v3, v3, Lcom/baidu/android/pushservice/d/l;->e:Ljava/lang/String;

    invoke-static {v0, v2, v1, v3}, Lcom/baidu/android/pushservice/util/f;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_19

    :cond_178
    iget-object v0, p0, Lcom/baidu/android/pushservice/d/a;->b:Lcom/baidu/android/pushservice/d/l;

    iget-object v0, v0, Lcom/baidu/android/pushservice/d/l;->a:Ljava/lang/String;

    const-string v1, "method_deal_lapp_bind_intent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b4

    iget-object v0, p0, Lcom/baidu/android/pushservice/d/a;->b:Lcom/baidu/android/pushservice/d/l;

    iget-object v0, v0, Lcom/baidu/android/pushservice/d/l;->a:Ljava/lang/String;

    const-string v1, "method_lapp_unbind"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b4

    iget-object v0, p0, Lcom/baidu/android/pushservice/d/a;->b:Lcom/baidu/android/pushservice/d/l;

    iget-object v0, v0, Lcom/baidu/android/pushservice/d/l;->a:Ljava/lang/String;

    const-string v1, "method_set_lapp_tags"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b4

    iget-object v0, p0, Lcom/baidu/android/pushservice/d/a;->b:Lcom/baidu/android/pushservice/d/l;

    iget-object v0, v0, Lcom/baidu/android/pushservice/d/l;->a:Ljava/lang/String;

    const-string v1, "method_del_lapp_tags"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b4

    iget-object v0, p0, Lcom/baidu/android/pushservice/d/a;->b:Lcom/baidu/android/pushservice/d/l;

    iget-object v0, v0, Lcom/baidu/android/pushservice/d/l;->a:Ljava/lang/String;

    const-string v1, "method_list_lapp_tags"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1bb

    :cond_1b4
    const-string v0, "com.baidu.android.pushservice.action.lapp.RECEIVE"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_30

    :cond_1bb
    iget-object v0, p0, Lcom/baidu/android/pushservice/d/a;->b:Lcom/baidu/android/pushservice/d/l;

    iget-object v0, v0, Lcom/baidu/android/pushservice/d/l;->a:Ljava/lang/String;

    const-string v1, "method_sdk_bind"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ce

    const-string v0, "com.baidu.android.pushservice.action.sdk.RECEIVE"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_30

    :cond_1ce
    const-string v0, "com.baidu.android.pushservice.action.RECEIVE"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_30

    :catch_1d5
    move-exception v1

    const/4 v1, 0x1

    if-eqz p2, :cond_1f8

    const-string v4, "AbstractProcessor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bind failed msg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/frontia/a/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_ed

    :cond_1f8
    const-string v4, "AbstractProcessor"

    const-string v5, "bind failed"

    invoke-static {v4, v5}, Lcom/baidu/frontia/a/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_ed

    :catch_201
    move-exception v0

    const-string v1, "AbstractProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_fb

    :cond_220
    if-eqz p2, :cond_fb

    iget-object v0, p0, Lcom/baidu/android/pushservice/d/a;->b:Lcom/baidu/android/pushservice/d/l;

    iget-object v0, v0, Lcom/baidu/android/pushservice/d/l;->a:Ljava/lang/String;

    const-string v1, "method_unbind"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23a

    iget-object v0, p0, Lcom/baidu/android/pushservice/d/a;->b:Lcom/baidu/android/pushservice/d/l;

    iget-object v0, v0, Lcom/baidu/android/pushservice/d/l;->a:Ljava/lang/String;

    const-string v1, "com.baidu.android.pushservice.action.UNBINDAPP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fb

    :cond_23a
    new-instance v0, Lcom/baidu/android/pushservice/f/c;

    invoke-direct {v0}, Lcom/baidu/android/pushservice/f/c;-><init>()V

    iget-object v1, p0, Lcom/baidu/android/pushservice/d/a;->b:Lcom/baidu/android/pushservice/d/l;

    iget-object v1, v1, Lcom/baidu/android/pushservice/d/l;->a:Ljava/lang/String;

    const-string v3, "method_unbind"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29b

    const-string v1, "020301"

    iput-object v1, v0, Lcom/baidu/android/pushservice/f/c;->g:Ljava/lang/String;

    :goto_24f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/baidu/android/pushservice/f/c;->h:J

    iget-object v1, p0, Lcom/baidu/android/pushservice/d/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/frontia/a/d/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/android/pushservice/f/c;->i:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/android/pushservice/d/a;->b:Lcom/baidu/android/pushservice/d/l;

    iget-object v1, v1, Lcom/baidu/android/pushservice/d/l;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/android/pushservice/f/c;->k:Ljava/lang/String;

    :try_start_263
    new-instance v1, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "request_id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/android/pushservice/f/c;->b:Ljava/lang/String;
    :try_end_275
    .catch Lorg/json/JSONException; {:try_start_263 .. :try_end_275} :catch_2a0

    :goto_275
    :try_start_275
    iget-object v1, p0, Lcom/baidu/android/pushservice/d/a;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/f/t;->a(Landroid/content/Context;Lcom/baidu/android/pushservice/f/c;)J
    :try_end_27a
    .catch Ljava/lang/Exception; {:try_start_275 .. :try_end_27a} :catch_27c

    goto/16 :goto_fb

    :catch_27c
    move-exception v0

    const-string v1, "AbstractProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_fb

    :cond_29b
    const-string v1, "020601"

    iput-object v1, v0, Lcom/baidu/android/pushservice/f/c;->g:Ljava/lang/String;

    goto :goto_24f

    :catch_2a0
    move-exception v1

    const-string v1, "AbstractProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unbind failed msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/baidu/frontia/a/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v0, Lcom/baidu/android/pushservice/f/c;->a:Ljava/lang/String;

    goto :goto_275
.end method

.method protected a(Landroid/content/Intent;)V
    .registers 2

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .registers 7

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    const-string v0, "{\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "{\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_15
    :try_start_15
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "error_code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "error_msg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "request_id"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "error_msg"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "request_id"

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/baidu/android/pushservice/d/a;->a(I[B)V
    :try_end_46
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_46} :catch_47

    goto :goto_2

    :catch_47
    move-exception v0

    const-string v1, "AbstractProcessor"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected a(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/baidu/android/pushservice/d/b;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/baidu/android/pushservice/d/a;->b:Lcom/baidu/android/pushservice/d/l;

    iget-object v0, v0, Lcom/baidu/android/pushservice/d/l;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "rsa_bduss"

    iget-object v2, p0, Lcom/baidu/android/pushservice/d/a;->b:Lcom/baidu/android/pushservice/d/l;

    iget-object v2, v2, Lcom/baidu/android/pushservice/d/l;->h:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "appid"

    iget-object v2, p0, Lcom/baidu/android/pushservice/d/a;->b:Lcom/baidu/android/pushservice/d/l;

    iget-object v2, v2, Lcom/baidu/android/pushservice/d/l;->f:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_29
    :goto_29
    return-void

    :cond_2a
    iget-object v0, p0, Lcom/baidu/android/pushservice/d/a;->b:Lcom/baidu/android/pushservice/d/l;

    iget-object v0, v0, Lcom/baidu/android/pushservice/d/l;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_43

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "rsa_access_token"

    iget-object v2, p0, Lcom/baidu/android/pushservice/d/a;->b:Lcom/baidu/android/pushservice/d/l;

    iget-object v2, v2, Lcom/baidu/android/pushservice/d/l;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_43
    iget-object v0, p0, Lcom/baidu/android/pushservice/d/a;->b:Lcom/baidu/android/pushservice/d/l;

    iget-object v0, v0, Lcom/baidu/android/pushservice/d/l;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "apikey"

    iget-object v2, p0, Lcom/baidu/android/pushservice/d/a;->b:Lcom/baidu/android/pushservice/d/l;

    iget-object v2, v2, Lcom/baidu/android/pushservice/d/l;->i:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29
.end method

.method protected b(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    return-object p1
.end method

.method public b()Z
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/android/pushservice/d/a;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v1, "AbstractProcessor"

    const-string v2, "mUrl is null"

    invoke-static {v1, v2}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    :goto_16
    return v0

    :cond_17
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v1

    if-eqz v1, :cond_37

    const-string v1, "AbstractProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request Url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/android/pushservice/d/a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_37
    move v1, v0

    :goto_38
    const/4 v2, 0x2

    if-gt v1, v2, :cond_16

    invoke-direct {p0, v1}, Lcom/baidu/android/pushservice/d/a;->b(I)I

    move-result v2

    if-nez v2, :cond_4a

    const/4 v0, 0x1

    if-lez v1, :cond_16

    const-string v1, "030402"

    invoke-direct {p0, v1, v2}, Lcom/baidu/android/pushservice/d/a;->a(Ljava/lang/String;I)V

    goto :goto_16

    :cond_4a
    const/16 v3, 0x2712

    if-ne v2, v3, :cond_16

    if-lez v1, :cond_58

    const-string v3, "030403"

    invoke-direct {p0, v3, v2}, Lcom/baidu/android/pushservice/d/a;->a(Ljava/lang/String;I)V

    :goto_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    :cond_58
    const-string v3, "030401"

    invoke-direct {p0, v3, v2}, Lcom/baidu/android/pushservice/d/a;->a(Ljava/lang/String;I)V

    goto :goto_55
.end method

.method public run()V
    .registers 1

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->a()V

    return-void
.end method
