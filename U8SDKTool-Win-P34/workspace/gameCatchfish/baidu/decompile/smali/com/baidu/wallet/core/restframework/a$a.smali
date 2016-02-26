.class Lcom/baidu/wallet/core/restframework/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/wallet/core/restframework/c/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/wallet/core/restframework/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/wallet/core/restframework/a;

.field private final b:Lcom/baidu/wallet/core/restframework/a/d;


# direct methods
.method public constructor <init>(Lcom/baidu/wallet/core/restframework/a;Ljava/lang/Class;)V
    .registers 5

    iput-object p1, p0, Lcom/baidu/wallet/core/restframework/a$a;->a:Lcom/baidu/wallet/core/restframework/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_1b

    const-class v0, Ljava/lang/Void;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    new-instance v0, Lcom/baidu/wallet/core/restframework/a/d;

    invoke-virtual {p1}, Lcom/baidu/wallet/core/restframework/a;->b()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/baidu/wallet/core/restframework/a/d;-><init>(Ljava/lang/Class;Ljava/util/List;)V

    iput-object v0, p0, Lcom/baidu/wallet/core/restframework/a$a;->b:Lcom/baidu/wallet/core/restframework/a/d;

    :goto_1a
    return-void

    :cond_1b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/wallet/core/restframework/a$a;->b:Lcom/baidu/wallet/core/restframework/a/d;

    goto :goto_1a
.end method


# virtual methods
.method public a(Lcom/baidu/wallet/core/restframework/c/b;)Lcom/baidu/wallet/core/restframework/http/h;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/wallet/core/restframework/a$a;->b:Lcom/baidu/wallet/core/restframework/a/d;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/baidu/wallet/core/restframework/a$a;->b:Lcom/baidu/wallet/core/restframework/a/d;

    invoke-virtual {v0, p1}, Lcom/baidu/wallet/core/restframework/a/d;->b(Lcom/baidu/wallet/core/restframework/c/b;)Ljava/lang/Object;

    move-result-object v1

    new-instance v0, Lcom/baidu/wallet/core/restframework/http/h;

    invoke-interface {p1}, Lcom/baidu/wallet/core/restframework/c/b;->a()Lcom/baidu/wallet/core/restframework/http/i;

    move-result-object v2

    invoke-interface {p1}, Lcom/baidu/wallet/core/restframework/c/b;->e()Lcom/baidu/wallet/core/restframework/http/HttpStatus;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/wallet/core/restframework/http/h;-><init>(Ljava/lang/Object;Lcom/baidu/wallet/core/utils/support/MultiValueMap;Lcom/baidu/wallet/core/restframework/http/HttpStatus;)V

    :goto_17
    return-object v0

    :cond_18
    new-instance v0, Lcom/baidu/wallet/core/restframework/http/h;

    invoke-interface {p1}, Lcom/baidu/wallet/core/restframework/c/b;->a()Lcom/baidu/wallet/core/restframework/http/i;

    move-result-object v1

    invoke-interface {p1}, Lcom/baidu/wallet/core/restframework/c/b;->e()Lcom/baidu/wallet/core/restframework/http/HttpStatus;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/baidu/wallet/core/restframework/http/h;-><init>(Lcom/baidu/wallet/core/utils/support/MultiValueMap;Lcom/baidu/wallet/core/restframework/http/HttpStatus;)V

    goto :goto_17
.end method

.method public bridge synthetic b(Lcom/baidu/wallet/core/restframework/c/b;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/baidu/wallet/core/restframework/a$a;->a(Lcom/baidu/wallet/core/restframework/c/b;)Lcom/baidu/wallet/core/restframework/http/h;

    move-result-object v0

    return-object v0
.end method
