.class Lcom/baidu/wallet/core/beans/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/wallet/core/restframework/c/c;


# instance fields
.field final synthetic a:Lcom/baidu/wallet/core/beans/g;


# direct methods
.method constructor <init>(Lcom/baidu/wallet/core/beans/g;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/wallet/core/beans/f;->a:Lcom/baidu/wallet/core/beans/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/wallet/core/restframework/c/b;)Z
    .registers 5

    const/4 v0, 0x1

    if-eqz p1, :cond_1b

    :try_start_3
    invoke-interface {p1}, Lcom/baidu/wallet/core/restframework/c/b;->e()Lcom/baidu/wallet/core/restframework/http/HttpStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/wallet/core/restframework/http/HttpStatus;->series()Lcom/baidu/wallet/core/restframework/http/HttpStatus$Series;

    move-result-object v1

    sget-object v2, Lcom/baidu/wallet/core/restframework/http/HttpStatus$Series;->CLIENT_ERROR:Lcom/baidu/wallet/core/restframework/http/HttpStatus$Series;

    if-eq v1, v2, :cond_1b

    invoke-interface {p1}, Lcom/baidu/wallet/core/restframework/c/b;->e()Lcom/baidu/wallet/core/restframework/http/HttpStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/wallet/core/restframework/http/HttpStatus;->series()Lcom/baidu/wallet/core/restframework/http/HttpStatus$Series;

    move-result-object v1

    sget-object v2, Lcom/baidu/wallet/core/restframework/http/HttpStatus$Series;->SERVER_ERROR:Lcom/baidu/wallet/core/restframework/http/HttpStatus$Series;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_19} :catch_1c

    if-ne v1, v2, :cond_21

    :cond_1b
    :goto_1b
    return v0

    :catch_1c
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1b

    :cond_21
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public b(Lcom/baidu/wallet/core/restframework/c/b;)V
    .registers 7

    const/4 v4, -0x4

    if-eqz p1, :cond_68

    :try_start_3
    invoke-interface {p1}, Lcom/baidu/wallet/core/restframework/c/b;->e()Lcom/baidu/wallet/core/restframework/http/HttpStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/restframework/http/HttpStatus;->series()Lcom/baidu/wallet/core/restframework/http/HttpStatus$Series;

    move-result-object v0

    sget-object v1, Lcom/baidu/wallet/core/restframework/http/HttpStatus$Series;->CLIENT_ERROR:Lcom/baidu/wallet/core/restframework/http/HttpStatus$Series;

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/baidu/wallet/core/beans/f;->a:Lcom/baidu/wallet/core/beans/g;

    iget-object v0, v0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    iget-object v0, v0, Lcom/baidu/wallet/core/beans/BaseBean;->mRspCallback:Lcom/baidu/wallet/core/beans/IBeanResponseCallback;

    iget-object v1, p0, Lcom/baidu/wallet/core/beans/f;->a:Lcom/baidu/wallet/core/beans/g;

    iget-object v1, v1, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    invoke-virtual {v1}, Lcom/baidu/wallet/core/beans/BaseBean;->getBeanId()I

    move-result v1

    const/4 v2, -0x2

    invoke-interface {p1}, Lcom/baidu/wallet/core/restframework/c/b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/baidu/wallet/core/beans/IBeanResponseCallback;->onBeanExecFailure(IILjava/lang/String;)V

    :cond_25
    :goto_25
    return-void

    :cond_26
    invoke-interface {p1}, Lcom/baidu/wallet/core/restframework/c/b;->e()Lcom/baidu/wallet/core/restframework/http/HttpStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/restframework/http/HttpStatus;->series()Lcom/baidu/wallet/core/restframework/http/HttpStatus$Series;

    move-result-object v0

    sget-object v1, Lcom/baidu/wallet/core/restframework/http/HttpStatus$Series;->SERVER_ERROR:Lcom/baidu/wallet/core/restframework/http/HttpStatus$Series;

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Lcom/baidu/wallet/core/beans/f;->a:Lcom/baidu/wallet/core/beans/g;

    iget-object v0, v0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    iget-object v0, v0, Lcom/baidu/wallet/core/beans/BaseBean;->mRspCallback:Lcom/baidu/wallet/core/beans/IBeanResponseCallback;

    iget-object v1, p0, Lcom/baidu/wallet/core/beans/f;->a:Lcom/baidu/wallet/core/beans/g;

    iget-object v1, v1, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    invoke-virtual {v1}, Lcom/baidu/wallet/core/beans/BaseBean;->getBeanId()I

    move-result v1

    const/4 v2, -0x3

    invoke-interface {p1}, Lcom/baidu/wallet/core/restframework/c/b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/baidu/wallet/core/beans/IBeanResponseCallback;->onBeanExecFailure(IILjava/lang/String;)V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_48} :catch_49

    goto :goto_25

    :catch_49
    move-exception v0

    iget-object v0, p0, Lcom/baidu/wallet/core/beans/f;->a:Lcom/baidu/wallet/core/beans/g;

    iget-object v0, v0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    iget-object v0, v0, Lcom/baidu/wallet/core/beans/BaseBean;->mRspCallback:Lcom/baidu/wallet/core/beans/IBeanResponseCallback;

    iget-object v1, p0, Lcom/baidu/wallet/core/beans/f;->a:Lcom/baidu/wallet/core/beans/g;

    iget-object v1, v1, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    invoke-virtual {v1}, Lcom/baidu/wallet/core/beans/BaseBean;->getBeanId()I

    move-result v1

    iget-object v2, p0, Lcom/baidu/wallet/core/beans/f;->a:Lcom/baidu/wallet/core/beans/g;

    iget-object v2, v2, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    iget-object v2, v2, Lcom/baidu/wallet/core/beans/BaseBean;->mContext:Landroid/content/Context;

    const-string v3, "ebpay_resolve_error"

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v4, v2}, Lcom/baidu/wallet/core/beans/IBeanResponseCallback;->onBeanExecFailure(IILjava/lang/String;)V

    goto :goto_25

    :cond_68
    iget-object v0, p0, Lcom/baidu/wallet/core/beans/f;->a:Lcom/baidu/wallet/core/beans/g;

    iget-object v0, v0, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    iget-object v0, v0, Lcom/baidu/wallet/core/beans/BaseBean;->mRspCallback:Lcom/baidu/wallet/core/beans/IBeanResponseCallback;

    iget-object v1, p0, Lcom/baidu/wallet/core/beans/f;->a:Lcom/baidu/wallet/core/beans/g;

    iget-object v1, v1, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    invoke-virtual {v1}, Lcom/baidu/wallet/core/beans/BaseBean;->getBeanId()I

    move-result v1

    iget-object v2, p0, Lcom/baidu/wallet/core/beans/f;->a:Lcom/baidu/wallet/core/beans/g;

    iget-object v2, v2, Lcom/baidu/wallet/core/beans/g;->c:Lcom/baidu/wallet/core/beans/BaseBean;

    iget-object v2, v2, Lcom/baidu/wallet/core/beans/BaseBean;->mContext:Landroid/content/Context;

    const-string v3, "ebpay_resolve_error"

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v4, v2}, Lcom/baidu/wallet/core/beans/IBeanResponseCallback;->onBeanExecFailure(IILjava/lang/String;)V

    goto :goto_25
.end method
