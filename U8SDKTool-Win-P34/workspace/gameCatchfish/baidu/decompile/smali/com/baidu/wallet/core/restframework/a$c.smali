.class final Lcom/baidu/wallet/core/restframework/a$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/wallet/core/restframework/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/wallet/core/restframework/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/wallet/core/restframework/a;

.field private final b:Ljava/lang/Class;


# direct methods
.method private constructor <init>(Lcom/baidu/wallet/core/restframework/a;Ljava/lang/Class;)V
    .registers 3

    iput-object p1, p0, Lcom/baidu/wallet/core/restframework/a$c;->a:Lcom/baidu/wallet/core/restframework/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/baidu/wallet/core/restframework/a$c;->b:Ljava/lang/Class;

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/wallet/core/restframework/a;Ljava/lang/Class;Lcom/baidu/wallet/core/restframework/a$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/baidu/wallet/core/restframework/a$c;-><init>(Lcom/baidu/wallet/core/restframework/a;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/baidu/wallet/core/restframework/c/d;)V
    .registers 9

    iget-object v0, p0, Lcom/baidu/wallet/core/restframework/a$c;->b:Ljava/lang/Class;

    if-eqz v0, :cond_85

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/baidu/wallet/core/restframework/a$c;->a:Lcom/baidu/wallet/core/restframework/a;

    invoke-virtual {v0}, Lcom/baidu/wallet/core/restframework/a;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/core/restframework/b/c;

    iget-object v1, p0, Lcom/baidu/wallet/core/restframework/a$c;->b:Ljava/lang/Class;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Lcom/baidu/wallet/core/restframework/b/c;->a(Ljava/lang/Class;Lcom/baidu/wallet/core/restframework/http/j;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {v0}, Lcom/baidu/wallet/core/restframework/b/c;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_30
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/core/restframework/http/j;

    invoke-virtual {v0}, Lcom/baidu/wallet/core/restframework/http/j;->e()Ljava/nio/charset/Charset;

    move-result-object v1

    if-eqz v1, :cond_50

    new-instance v1, Lcom/baidu/wallet/core/restframework/http/j;

    invoke-virtual {v0}, Lcom/baidu/wallet/core/restframework/http/j;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/baidu/wallet/core/restframework/http/j;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v5, v0}, Lcom/baidu/wallet/core/restframework/http/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :cond_50
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_30

    :cond_54
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_85

    invoke-static {v2}, Lcom/baidu/wallet/core/restframework/http/j;->a(Ljava/util/List;)V

    const-string v0, "RestTemplate"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7e

    const-string v0, "RestTemplate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting request Accept header to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7e
    invoke-interface {p2}, Lcom/baidu/wallet/core/restframework/c/d;->a()Lcom/baidu/wallet/core/restframework/http/i;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/baidu/wallet/core/restframework/http/i;->a(Ljava/util/List;)V

    :cond_85
    return-void
.end method
