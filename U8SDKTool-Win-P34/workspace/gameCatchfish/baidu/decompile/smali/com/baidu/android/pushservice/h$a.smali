.class Lcom/baidu/android/pushservice/h$a;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/android/pushservice/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/android/pushservice/h;


# direct methods
.method constructor <init>(Lcom/baidu/android/pushservice/h;)V
    .registers 3

    iput-object p1, p0, Lcom/baidu/android/pushservice/h$a;->a:Lcom/baidu/android/pushservice/h;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string v0, "PushService-PushConnection-readThread"

    invoke-virtual {p0, v0}, Lcom/baidu/android/pushservice/h$a;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const/4 v4, 0x0

    :goto_1
    iget-object v0, p0, Lcom/baidu/android/pushservice/h$a;->a:Lcom/baidu/android/pushservice/h;

    invoke-static {v0}, Lcom/baidu/android/pushservice/h;->l(Lcom/baidu/android/pushservice/h;)Z

    move-result v0

    if-nez v0, :cond_f1

    :try_start_9
    sget v0, Lcom/baidu/android/pushservice/h;->a:I

    invoke-static {v0}, Lcom/baidu/android/pushservice/jni/PushSocket;->b(I)[B
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_63

    move-result-object v0

    :goto_f
    iget-object v1, p0, Lcom/baidu/android/pushservice/h$a;->a:Lcom/baidu/android/pushservice/h;

    iget-object v1, v1, Lcom/baidu/android/pushservice/h;->b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/baidu/android/pushservice/h$a;->a:Lcom/baidu/android/pushservice/h;

    invoke-static {v2}, Lcom/baidu/android/pushservice/h;->m(Lcom/baidu/android/pushservice/h;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/baidu/android/pushservice/h$a;->a:Lcom/baidu/android/pushservice/h;

    invoke-static {v1}, Lcom/baidu/android/pushservice/h;->k(Lcom/baidu/android/pushservice/h;)Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/baidu/android/pushservice/h$a;->a:Lcom/baidu/android/pushservice/h;

    invoke-static {v1, v4}, Lcom/baidu/android/pushservice/h;->d(Lcom/baidu/android/pushservice/h;Z)Z

    iget-object v1, p0, Lcom/baidu/android/pushservice/h$a;->a:Lcom/baidu/android/pushservice/h;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h;->e(Lcom/baidu/android/pushservice/h;Z)V

    :cond_2f
    if-eqz v0, :cond_34

    array-length v1, v0

    if-nez v1, :cond_6d

    :cond_34
    invoke-static {}, Lcom/baidu/android/pushservice/jni/PushSocket;->getLastSocketError()I

    move-result v0

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v1

    if-eqz v1, :cond_56

    const-string v1, "PushConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receive err,errno:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_56
    iget-object v1, p0, Lcom/baidu/android/pushservice/h$a;->a:Lcom/baidu/android/pushservice/h;

    const-string v2, "030301"

    invoke-static {v1, v2, v0}, Lcom/baidu/android/pushservice/h;->a(Lcom/baidu/android/pushservice/h;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/baidu/android/pushservice/h$a;->a:Lcom/baidu/android/pushservice/h;

    invoke-static {v0}, Lcom/baidu/android/pushservice/h;->e(Lcom/baidu/android/pushservice/h;)V

    goto :goto_1

    :catch_63
    move-exception v0

    const/4 v0, 0x0

    const-string v1, "PushConnection"

    const-string v2, "Get message exception"

    invoke-static {v1, v2}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_6d
    :try_start_6d
    iget-object v1, p0, Lcom/baidu/android/pushservice/h$a;->a:Lcom/baidu/android/pushservice/h;

    iget-object v1, v1, Lcom/baidu/android/pushservice/h;->c:Lcom/baidu/android/pushservice/message/d;

    array-length v2, v0

    invoke-virtual {v1, v0, v2}, Lcom/baidu/android/pushservice/message/d;->a([BI)Lcom/baidu/android/pushservice/message/e;
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_75} :catch_cd

    move-result-object v0

    if-eqz v0, :cond_a1

    :try_start_78
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v1

    if-eqz v1, :cond_9a

    const-string v1, "PushConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ReadThread receive msg :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/message/e;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9a
    iget-object v1, p0, Lcom/baidu/android/pushservice/h$a;->a:Lcom/baidu/android/pushservice/h;

    iget-object v1, v1, Lcom/baidu/android/pushservice/h;->c:Lcom/baidu/android/pushservice/message/d;

    invoke-virtual {v1, v0}, Lcom/baidu/android/pushservice/message/d;->b(Lcom/baidu/android/pushservice/message/e;)V

    :cond_a1
    iget-object v0, p0, Lcom/baidu/android/pushservice/h$a;->a:Lcom/baidu/android/pushservice/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h;->b(Lcom/baidu/android/pushservice/h;I)I
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_a7} :catch_a9

    goto/16 :goto_1

    :catch_a9
    move-exception v0

    const-string v1, "PushConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handle message exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/baidu/android/pushservice/util/f;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/android/pushservice/h$a;->a:Lcom/baidu/android/pushservice/h;

    invoke-static {v0}, Lcom/baidu/android/pushservice/h;->e(Lcom/baidu/android/pushservice/h;)V

    goto/16 :goto_1

    :catch_cd
    move-exception v0

    const-string v1, "PushConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read message exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/baidu/android/pushservice/util/f;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/frontia/a/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/android/pushservice/h$a;->a:Lcom/baidu/android/pushservice/h;

    invoke-static {v0}, Lcom/baidu/android/pushservice/h;->e(Lcom/baidu/android/pushservice/h;)V

    goto/16 :goto_1

    :cond_f1
    return-void
.end method
