.class public Lcom/baidu/android/pushservice/d/ac;
.super Lcom/baidu/android/pushservice/d/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/android/pushservice/d/ac$a;
    }
.end annotation


# instance fields
.field protected e:Ljava/lang/String;

.field protected f:Lcom/baidu/android/pushservice/d/ac$a;


# direct methods
.method public constructor <init>(Lcom/baidu/android/pushservice/d/l;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/baidu/android/pushservice/d/c;-><init>(Lcom/baidu/android/pushservice/d/l;Landroid/content/Context;)V

    iput-object p3, p0, Lcom/baidu/android/pushservice/d/ac;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Intent;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/baidu/android/pushservice/d/c;->a(Landroid/content/Intent;)V

    if-eqz p1, :cond_13

    const-string v0, "error_msg"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_13

    iget-object v1, p0, Lcom/baidu/android/pushservice/d/ac;->f:Lcom/baidu/android/pushservice/d/ac$a;

    invoke-interface {v1, v0}, Lcom/baidu/android/pushservice/d/ac$a;->a(I)V

    :cond_13
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

    const-string v2, "settags"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "tags"

    iget-object v2, p0, Lcom/baidu/android/pushservice/d/ac;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    const-string v2, "SetTags"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SetTags param -- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25

    :cond_4e
    return-void
.end method

.method protected b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/baidu/android/pushservice/d/ac;->f:Lcom/baidu/android/pushservice/d/ac$a;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/baidu/android/pushservice/d/ac;->f:Lcom/baidu/android/pushservice/d/ac$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/baidu/android/pushservice/d/ac$a;->a(I)V

    :cond_a
    invoke-super {p0, p1}, Lcom/baidu/android/pushservice/d/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
