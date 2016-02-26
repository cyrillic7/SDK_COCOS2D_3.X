.class public Lcom/baidu/android/pushservice/e/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/android/pushservice/e/a;


# instance fields
.field private a:Lcom/baidu/android/pushservice/b/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/baidu/android/pushservice/b/b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/android/pushservice/e/b;->a:Lcom/baidu/android/pushservice/b/b;

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 2

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/baidu/android/pushservice/e/b;->a:Lcom/baidu/android/pushservice/b/b;

    invoke-interface {v0, p1, p2}, Lcom/baidu/android/pushservice/b/b;->b(ILjava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public a(ILjava/lang/String;Z)V
    .registers 4

    return-void
.end method

.method public a(Z)V
    .registers 2

    return-void
.end method

.method public a(ZZ)V
    .registers 3

    return-void
.end method

.method public b(I)V
    .registers 2

    return-void
.end method

.method public b(ILjava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/b;->a:Lcom/baidu/android/pushservice/b/b;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/baidu/android/pushservice/e/b;->a:Lcom/baidu/android/pushservice/b/b;

    invoke-interface {v0, p1, p2}, Lcom/baidu/android/pushservice/b/b;->c(ILjava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    :catch_b
    move-exception v0

    const-string v1, "LightApiListenerForAidl"

    const-string v2, "onUnbindLightResult error"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "LightApiListenerForAidl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public c(I)V
    .registers 2

    return-void
.end method

.method public c(ILjava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/b;->a:Lcom/baidu/android/pushservice/b/b;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/baidu/android/pushservice/e/b;->a:Lcom/baidu/android/pushservice/b/b;

    invoke-interface {v0, p1, p2}, Lcom/baidu/android/pushservice/b/b;->b(ILjava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    :catch_b
    move-exception v0

    const-string v1, "LightApiListenerForAidl"

    const-string v2, "onSubscribeResult error"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "LightApiListenerForAidl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public d(I)V
    .registers 2

    return-void
.end method

.method public d(ILjava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/b;->a:Lcom/baidu/android/pushservice/b/b;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/baidu/android/pushservice/e/b;->a:Lcom/baidu/android/pushservice/b/b;

    invoke-interface {v0, p1, p2}, Lcom/baidu/android/pushservice/b/b;->a(ILjava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    :catch_b
    move-exception v0

    const-string v1, "LightApiListenerForAidl"

    const-string v2, "onUnsubscribeResult error"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "LightApiListenerForAidl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public e(I)V
    .registers 2

    return-void
.end method

.method public e(ILjava/lang/String;)V
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/baidu/android/pushservice/e/b;->a:Lcom/baidu/android/pushservice/b/b;

    invoke-interface {v0, p1, p2}, Lcom/baidu/android/pushservice/b/b;->b(ILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string v1, "LightApiListenerForAidl"

    const-string v2, "onSubscribeServiceResult error"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "LightApiListenerForAidl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public f(ILjava/lang/String;)V
    .registers 3

    return-void
.end method

.method public g(ILjava/lang/String;)V
    .registers 3

    return-void
.end method

.method public h(ILjava/lang/String;)V
    .registers 3

    return-void
.end method

.method public i(ILjava/lang/String;)V
    .registers 3

    return-void
.end method

.method public j(ILjava/lang/String;)V
    .registers 3

    return-void
.end method
