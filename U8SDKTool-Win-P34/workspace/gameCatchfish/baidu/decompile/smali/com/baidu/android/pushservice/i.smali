.class Lcom/baidu/android/pushservice/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/android/pushservice/h;


# direct methods
.method constructor <init>(Lcom/baidu/android/pushservice/h;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/android/pushservice/i;->a:Lcom/baidu/android/pushservice/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    const/4 v6, -0x1

    const/4 v5, -0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/baidu/android/pushservice/i;->a:Lcom/baidu/android/pushservice/h;

    invoke-static {v0}, Lcom/baidu/android/pushservice/h;->a(Lcom/baidu/android/pushservice/h;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/android/pushservice/i;->a:Lcom/baidu/android/pushservice/h;

    invoke-static {v1}, Lcom/baidu/android/pushservice/h;->b(Lcom/baidu/android/pushservice/h;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/jni/PushSocket;->createSocket(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/baidu/android/pushservice/h;->a:I

    sget v0, Lcom/baidu/android/pushservice/h;->a:I

    if-eq v0, v6, :cond_1e

    sget v0, Lcom/baidu/android/pushservice/h;->a:I

    if-ne v0, v5, :cond_a7

    :cond_1e
    invoke-static {}, Lcom/baidu/android/pushservice/jni/PushSocket;->getLastSocketError()I

    move-result v0

    const-string v1, "PushConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Create socket err, errno: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "socketfd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/baidu/android/pushservice/h;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/android/pushservice/z;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/android/pushservice/i;->a:Lcom/baidu/android/pushservice/h;

    invoke-static {v2}, Lcom/baidu/android/pushservice/h;->a(Lcom/baidu/android/pushservice/h;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9d

    iget-object v1, p0, Lcom/baidu/android/pushservice/i;->a:Lcom/baidu/android/pushservice/h;

    const-string v2, "030301"

    invoke-static {v1, v2, v0}, Lcom/baidu/android/pushservice/h;->a(Lcom/baidu/android/pushservice/h;Ljava/lang/String;I)V

    :goto_5d
    sget v1, Lcom/baidu/android/pushservice/h;->a:I

    if-ne v1, v5, :cond_81

    iget-object v1, p0, Lcom/baidu/android/pushservice/i;->a:Lcom/baidu/android/pushservice/h;

    invoke-static {v1}, Lcom/baidu/android/pushservice/h;->c(Lcom/baidu/android/pushservice/h;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/android/pushservice/i;->a:Lcom/baidu/android/pushservice/h;

    invoke-static {v2}, Lcom/baidu/android/pushservice/h;->d(Lcom/baidu/android/pushservice/h;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/z;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/android/pushservice/i;->a:Lcom/baidu/android/pushservice/h;

    invoke-static {v2, v4}, Lcom/baidu/android/pushservice/h;->a(Lcom/baidu/android/pushservice/h;Z)Z

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_81

    iget-object v2, p0, Lcom/baidu/android/pushservice/i;->a:Lcom/baidu/android/pushservice/h;

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/h;->a(Lcom/baidu/android/pushservice/h;Ljava/lang/String;)Ljava/lang/String;

    :cond_81
    sget v1, Lcom/baidu/android/pushservice/h;->a:I

    if-ne v1, v6, :cond_90

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_90

    iget-object v0, p0, Lcom/baidu/android/pushservice/i;->a:Lcom/baidu/android/pushservice/h;

    sget v1, Lcom/baidu/android/pushservice/z;->a:I

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h;->a(Lcom/baidu/android/pushservice/h;I)I

    :cond_90
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/android/pushservice/h;->a(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/baidu/android/pushservice/i;->a:Lcom/baidu/android/pushservice/h;

    invoke-static {v0}, Lcom/baidu/android/pushservice/h;->e(Lcom/baidu/android/pushservice/h;)V

    :goto_9c
    return-void

    :cond_9d
    iget-object v1, p0, Lcom/baidu/android/pushservice/i;->a:Lcom/baidu/android/pushservice/h;

    const-string v2, "030303"

    const/16 v3, 0x2712

    invoke-static {v1, v2, v3}, Lcom/baidu/android/pushservice/h;->a(Lcom/baidu/android/pushservice/h;Ljava/lang/String;I)V

    goto :goto_5d

    :cond_a7
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v0

    if-eqz v0, :cond_e3

    const-string v1, "PushConnection"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create Socket ok with "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v0, Lcom/baidu/android/pushservice/jni/PushSocket;->a:Z

    if-eqz v0, :cond_1ac

    const-string v0, "c socket"

    :goto_c0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create Socket ok socketfd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/baidu/android/pushservice/h;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/android/pushservice/util/f;->b(Ljava/lang/String;)V

    :cond_e3
    iget-object v0, p0, Lcom/baidu/android/pushservice/i;->a:Lcom/baidu/android/pushservice/h;

    new-instance v1, Lcom/baidu/android/pushservice/message/f;

    iget-object v2, p0, Lcom/baidu/android/pushservice/i;->a:Lcom/baidu/android/pushservice/h;

    invoke-static {v2}, Lcom/baidu/android/pushservice/h;->c(Lcom/baidu/android/pushservice/h;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/baidu/android/pushservice/message/f;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/baidu/android/pushservice/h;->c:Lcom/baidu/android/pushservice/message/d;

    iget-object v0, p0, Lcom/baidu/android/pushservice/i;->a:Lcom/baidu/android/pushservice/h;

    invoke-static {v0, v3}, Lcom/baidu/android/pushservice/h;->b(Lcom/baidu/android/pushservice/h;Z)Z

    iget-object v0, p0, Lcom/baidu/android/pushservice/i;->a:Lcom/baidu/android/pushservice/h;

    invoke-virtual {v0, v3}, Lcom/baidu/android/pushservice/h;->a(Z)V

    iget-object v0, p0, Lcom/baidu/android/pushservice/i;->a:Lcom/baidu/android/pushservice/h;

    invoke-static {v0}, Lcom/baidu/android/pushservice/h;->f(Lcom/baidu/android/pushservice/h;)Lcom/baidu/android/pushservice/h$a;

    move-result-object v0

    if-eqz v0, :cond_111

    iget-object v0, p0, Lcom/baidu/android/pushservice/i;->a:Lcom/baidu/android/pushservice/h;

    invoke-static {v0}, Lcom/baidu/android/pushservice/h;->f(Lcom/baidu/android/pushservice/h;)Lcom/baidu/android/pushservice/h$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/h$a;->interrupt()V

    :cond_111
    iget-object v0, p0, Lcom/baidu/android/pushservice/i;->a:Lcom/baidu/android/pushservice/h;

    invoke-static {v0}, Lcom/baidu/android/pushservice/h;->g(Lcom/baidu/android/pushservice/h;)Lcom/baidu/android/pushservice/h$b;

    move-result-object v0

    if-eqz v0, :cond_122

    iget-object v0, p0, Lcom/baidu/android/pushservice/i;->a:Lcom/baidu/android/pushservice/h;

    invoke-static {v0}, Lcom/baidu/android/pushservice/h;->g(Lcom/baidu/android/pushservice/h;)Lcom/baidu/android/pushservice/h$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/h$b;->interrupt()V

    :cond_122
    iget-object v0, p0, Lcom/baidu/android/pushservice/i;->a:Lcom/baidu/android/pushservice/h;

    invoke-static {v0, v4}, Lcom/baidu/android/pushservice/h;->c(Lcom/baidu/android/pushservice/h;Z)Z

    iget-object v0, p0, Lcom/baidu/android/pushservice/i;->a:Lcom/baidu/android/pushservice/h;

    new-instance v1, Lcom/baidu/android/pushservice/h$a;

    iget-object v2, p0, Lcom/baidu/android/pushservice/i;->a:Lcom/baidu/android/pushservice/h;

    invoke-direct {v1, v2}, Lcom/baidu/android/pushservice/h$a;-><init>(Lcom/baidu/android/pushservice/h;)V

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h;->a(Lcom/baidu/android/pushservice/h;Lcom/baidu/android/pushservice/h$a;)Lcom/baidu/android/pushservice/h$a;

    iget-object v0, p0, Lcom/baidu/android/pushservice/i;->a:Lcom/baidu/android/pushservice/h;

    invoke-static {v0}, Lcom/baidu/android/pushservice/h;->f(Lcom/baidu/android/pushservice/h;)Lcom/baidu/android/pushservice/h$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/h$a;->start()V

    iget-object v0, p0, Lcom/baidu/android/pushservice/i;->a:Lcom/baidu/android/pushservice/h;

    new-instance v1, Lcom/baidu/android/pushservice/h$b;

    iget-object v2, p0, Lcom/baidu/android/pushservice/i;->a:Lcom/baidu/android/pushservice/h;

    invoke-direct {v1, v2}, Lcom/baidu/android/pushservice/h$b;-><init>(Lcom/baidu/android/pushservice/h;)V

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h;->a(Lcom/baidu/android/pushservice/h;Lcom/baidu/android/pushservice/h$b;)Lcom/baidu/android/pushservice/h$b;

    iget-object v0, p0, Lcom/baidu/android/pushservice/i;->a:Lcom/baidu/android/pushservice/h;

    invoke-static {v0}, Lcom/baidu/android/pushservice/h;->g(Lcom/baidu/android/pushservice/h;)Lcom/baidu/android/pushservice/h$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/h$b;->start()V

    iget-object v0, p0, Lcom/baidu/android/pushservice/i;->a:Lcom/baidu/android/pushservice/h;

    iget-object v0, v0, Lcom/baidu/android/pushservice/h;->c:Lcom/baidu/android/pushservice/message/d;

    sget v1, Lcom/baidu/android/pushservice/h;->a:I

    invoke-virtual {v0, v1}, Lcom/baidu/android/pushservice/message/d;->a(I)V

    invoke-static {}, Lcom/baidu/android/pushservice/z;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/android/pushservice/i;->a:Lcom/baidu/android/pushservice/h;

    invoke-static {v1}, Lcom/baidu/android/pushservice/h;->a(Lcom/baidu/android/pushservice/h;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_171

    iget-object v0, p0, Lcom/baidu/android/pushservice/i;->a:Lcom/baidu/android/pushservice/h;

    const-string v1, "030302"

    invoke-static {v0, v1, v4}, Lcom/baidu/android/pushservice/h;->a(Lcom/baidu/android/pushservice/h;Ljava/lang/String;I)V

    :cond_171
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/android/pushservice/h;->a(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/baidu/android/pushservice/i;->a:Lcom/baidu/android/pushservice/h;

    invoke-static {v0, v3}, Lcom/baidu/android/pushservice/h;->a(Lcom/baidu/android/pushservice/h;Z)Z

    iget-object v0, p0, Lcom/baidu/android/pushservice/i;->a:Lcom/baidu/android/pushservice/h;

    invoke-static {}, Lcom/baidu/android/pushservice/z;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h;->a(Lcom/baidu/android/pushservice/h;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/android/pushservice/i;->a:Lcom/baidu/android/pushservice/h;

    invoke-static {v0}, Lcom/baidu/android/pushservice/h;->c(Lcom/baidu/android/pushservice/h;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/android/pushservice/z;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/baidu/android/pushservice/i;->a:Lcom/baidu/android/pushservice/h;

    invoke-static {v0}, Lcom/baidu/android/pushservice/h;->c(Lcom/baidu/android/pushservice/h;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/android/pushservice/PushSDK;->getInstance(Landroid/content/Context;)Lcom/baidu/android/pushservice/PushSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/android/pushservice/i;->a:Lcom/baidu/android/pushservice/h;

    invoke-static {v1}, Lcom/baidu/android/pushservice/h;->h(Lcom/baidu/android/pushservice/h;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/android/pushservice/i;->a:Lcom/baidu/android/pushservice/h;

    invoke-static {v2}, Lcom/baidu/android/pushservice/h;->i(Lcom/baidu/android/pushservice/h;)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/baidu/android/pushservice/PushSDK;->setAlarmTimeout(I)V

    goto/16 :goto_9c

    :cond_1ac
    const-string v0, "java socket"

    goto/16 :goto_c0
.end method
