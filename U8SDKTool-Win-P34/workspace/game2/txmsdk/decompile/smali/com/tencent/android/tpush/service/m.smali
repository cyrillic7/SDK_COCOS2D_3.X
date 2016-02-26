.class Lcom/tencent/android/tpush/service/m;
.super Landroid/os/Handler;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/tencent/android/tpush/service/l;


# direct methods
.method constructor <init>(Lcom/tencent/android/tpush/service/l;Landroid/os/Looper;)V
    .registers 3

    .prologue
    .line 310
    iput-object p1, p0, Lcom/tencent/android/tpush/service/m;->a:Lcom/tencent/android/tpush/service/l;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .prologue
    .line 313
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 314
    if-eqz p1, :cond_a

    .line 315
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_8a

    .line 351
    :cond_a
    :goto_a
    return-void

    .line 317
    :pswitch_b
    iget-object v0, p0, Lcom/tencent/android/tpush/service/m;->a:Lcom/tencent/android/tpush/service/l;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/l;->a(Lcom/tencent/android/tpush/service/l;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 321
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 322
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->h()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/android/tpush/service/XGPushService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 323
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->h()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_a

    .line 325
    :cond_29
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->i()Z

    move-result v0

    if-nez v0, :cond_82

    .line 326
    const-string v0, "XGService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> Service\'s first running @@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/android/tpush/service/l;->h()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/android/tpush/service/l;->a(Z)Z

    .line 331
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/common/l;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_70

    .line 332
    const-string v0, "permission check failed, kill service!"

    .line 333
    const-string v1, "XGService"

    invoke-static {v1, v0}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/tencent/android/tpush/service/m;->a:Lcom/tencent/android/tpush/service/l;

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/l;->e()V

    .line 335
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 338
    :cond_70
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/d/d;->b(Landroid/content/Context;)Z

    .line 340
    invoke-static {}, Lcom/tencent/android/tpush/service/a;->a()Lcom/tencent/android/tpush/service/a;

    move-result-object v0

    invoke-static {}, Lcom/tencent/android/tpush/service/l;->h()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/service/a;->a(Landroid/content/Context;)V

    .line 346
    :cond_82
    invoke-static {}, Lcom/tencent/android/tpush/service/channel/b;->b()Lcom/tencent/android/tpush/service/channel/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/channel/b;->c()V

    goto :goto_a

    .line 315
    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_b
    .end packed-switch
.end method
