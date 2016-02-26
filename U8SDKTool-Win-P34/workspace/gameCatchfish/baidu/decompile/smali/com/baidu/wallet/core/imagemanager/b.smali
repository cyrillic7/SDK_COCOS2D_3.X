.class Lcom/baidu/wallet/core/imagemanager/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/wallet/core/restframework/c/c;


# instance fields
.field final synthetic a:Lcom/baidu/wallet/core/imagemanager/h$a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Lcom/baidu/wallet/core/imagemanager/h;


# direct methods
.method constructor <init>(Lcom/baidu/wallet/core/imagemanager/h;Lcom/baidu/wallet/core/imagemanager/h$a;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    iput-object p1, p0, Lcom/baidu/wallet/core/imagemanager/b;->d:Lcom/baidu/wallet/core/imagemanager/h;

    iput-object p2, p0, Lcom/baidu/wallet/core/imagemanager/b;->a:Lcom/baidu/wallet/core/imagemanager/h$a;

    iput-object p3, p0, Lcom/baidu/wallet/core/imagemanager/b;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/wallet/core/imagemanager/b;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/wallet/core/restframework/c/b;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1a

    :try_start_2
    invoke-interface {p1}, Lcom/baidu/wallet/core/restframework/c/b;->e()Lcom/baidu/wallet/core/restframework/http/HttpStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/restframework/http/HttpStatus;->series()Lcom/baidu/wallet/core/restframework/http/HttpStatus$Series;

    move-result-object v0

    sget-object v1, Lcom/baidu/wallet/core/restframework/http/HttpStatus$Series;->CLIENT_ERROR:Lcom/baidu/wallet/core/restframework/http/HttpStatus$Series;

    if-eq v0, v1, :cond_1a

    invoke-interface {p1}, Lcom/baidu/wallet/core/restframework/c/b;->e()Lcom/baidu/wallet/core/restframework/http/HttpStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/restframework/http/HttpStatus;->series()Lcom/baidu/wallet/core/restframework/http/HttpStatus$Series;

    move-result-object v0

    sget-object v1, Lcom/baidu/wallet/core/restframework/http/HttpStatus$Series;->SERVER_ERROR:Lcom/baidu/wallet/core/restframework/http/HttpStatus$Series;
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_18} :catch_1c

    if-ne v0, v1, :cond_20

    :cond_1a
    const/4 v0, 0x1

    :goto_1b
    return v0

    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_20
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public b(Lcom/baidu/wallet/core/restframework/c/b;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/wallet/core/imagemanager/b;->a:Lcom/baidu/wallet/core/imagemanager/h$a;

    iget-object v1, p0, Lcom/baidu/wallet/core/imagemanager/b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/wallet/core/imagemanager/b;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/baidu/wallet/core/imagemanager/h$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
