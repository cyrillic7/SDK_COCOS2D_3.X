.class Lcom/baidu/android/pushservice/e/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/android/pushservice/e/o;


# instance fields
.field final synthetic a:Lcom/baidu/android/pushservice/e/a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/baidu/android/pushservice/e/e;


# direct methods
.method constructor <init>(Lcom/baidu/android/pushservice/e/e;Lcom/baidu/android/pushservice/e/a;Ljava/lang/String;ILjava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/baidu/android/pushservice/e/l;->e:Lcom/baidu/android/pushservice/e/e;

    iput-object p2, p0, Lcom/baidu/android/pushservice/e/l;->a:Lcom/baidu/android/pushservice/e/a;

    iput-object p3, p0, Lcom/baidu/android/pushservice/e/l;->b:Ljava/lang/String;

    iput p4, p0, Lcom/baidu/android/pushservice/e/l;->c:I

    iput-object p5, p0, Lcom/baidu/android/pushservice/e/l;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/util/HashMap;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/l;->a:Lcom/baidu/android/pushservice/e/a;

    if-eqz v0, :cond_37

    :try_start_5
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "type"

    const-string v3, "subscribe_service"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "error"

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "api_key"

    iget-object v3, p0, Lcom/baidu/android/pushservice/e/l;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_4d

    if-eqz p2, :cond_6d

    const-string v0, "error_msg"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_29} :catch_68

    :goto_29
    :try_start_29
    const-string v3, "error_msg"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_2e
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_31} :catch_5d

    move-result-object v0

    :goto_32
    iget-object v2, p0, Lcom/baidu/android/pushservice/e/l;->a:Lcom/baidu/android/pushservice/e/a;

    invoke-interface {v2, p1, v0}, Lcom/baidu/android/pushservice/e/a;->e(ILjava/lang/String;)V

    :cond_37
    if-nez p1, :cond_4c

    iget v0, p0, Lcom/baidu/android/pushservice/e/l;->c:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4c

    new-instance v0, Lcom/baidu/android/pushservice/e/d;

    iget-object v2, p0, Lcom/baidu/android/pushservice/e/l;->b:Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Lcom/baidu/android/pushservice/e/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/baidu/android/pushservice/e/l;->e:Lcom/baidu/android/pushservice/e/e;

    iget-object v3, p0, Lcom/baidu/android/pushservice/e/l;->d:Ljava/lang/String;

    invoke-virtual {v2, v0, v1, v3, v1}, Lcom/baidu/android/pushservice/e/e;->a(Lcom/baidu/android/pushservice/e/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4c
    return-void

    :cond_4d
    if-eqz p2, :cond_6b

    :try_start_4f
    const-string v0, "details"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_57} :catch_68

    :goto_57
    :try_start_57
    const-string v3, "tag"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5c} :catch_5d

    goto :goto_2e

    :catch_5d
    move-exception v2

    :goto_5e
    iget-object v2, p0, Lcom/baidu/android/pushservice/e/l;->a:Lcom/baidu/android/pushservice/e/a;

    invoke-virtual {p2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/baidu/android/pushservice/e/a;->e(ILjava/lang/String;)V

    goto :goto_32

    :catch_68
    move-exception v0

    move-object v0, v1

    goto :goto_5e

    :cond_6b
    move-object v0, v1

    goto :goto_57

    :cond_6d
    move-object v0, v1

    goto :goto_29
.end method
