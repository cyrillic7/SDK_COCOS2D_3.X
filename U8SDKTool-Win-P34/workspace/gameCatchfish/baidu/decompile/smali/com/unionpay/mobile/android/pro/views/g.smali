.class final Lcom/unionpay/mobile/android/pro/views/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/pro/pboc/engine/b;

.field final synthetic b:Lcom/unionpay/mobile/android/model/c;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/util/HashMap;

.field final synthetic e:Lcom/unionpay/mobile/android/pro/views/e;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/pro/views/e;Lcom/unionpay/mobile/android/pro/pboc/engine/b;Lcom/unionpay/mobile/android/model/c;Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 6

    iput-object p1, p0, Lcom/unionpay/mobile/android/pro/views/g;->e:Lcom/unionpay/mobile/android/pro/views/e;

    iput-object p2, p0, Lcom/unionpay/mobile/android/pro/views/g;->a:Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    iput-object p3, p0, Lcom/unionpay/mobile/android/pro/views/g;->b:Lcom/unionpay/mobile/android/model/c;

    iput-object p4, p0, Lcom/unionpay/mobile/android/pro/views/g;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/unionpay/mobile/android/pro/views/g;->d:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/g;->a:Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/g;->b:Lcom/unionpay/mobile/android/model/c;

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/g;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/unionpay/mobile/android/pro/views/g;->e:Lcom/unionpay/mobile/android/pro/views/e;

    invoke-static {v3}, Lcom/unionpay/mobile/android/pro/views/e;->h(Lcom/unionpay/mobile/android/pro/views/e;)Lcom/unionpay/mobile/android/model/b;

    move-result-object v3

    iget-object v3, v3, Lcom/unionpay/mobile/android/model/b;->k:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/unionpay/mobile/android/pro/views/g;->d:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/unionpay/mobile/android/pro/views/g;->e:Lcom/unionpay/mobile/android/pro/views/e;

    invoke-static {v5}, Lcom/unionpay/mobile/android/pro/views/e;->i(Lcom/unionpay/mobile/android/pro/views/e;)Lcom/unionpay/mobile/android/model/b;

    move-result-object v5

    iget-object v5, v5, Lcom/unionpay/mobile/android/model/b;->i:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/unionpay/mobile/android/pro/pboc/engine/b;->a(Lcom/unionpay/mobile/android/model/c;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/g;->e:Lcom/unionpay/mobile/android/pro/views/e;

    invoke-static {v1}, Lcom/unionpay/mobile/android/pro/views/e;->j(Lcom/unionpay/mobile/android/pro/views/e;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/g;->e:Lcom/unionpay/mobile/android/pro/views/e;

    invoke-static {v2}, Lcom/unionpay/mobile/android/pro/views/e;->j(Lcom/unionpay/mobile/android/pro/views/e;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v0, :cond_33

    :goto_2b
    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_33
    const/4 v0, 0x0

    goto :goto_2b
.end method
