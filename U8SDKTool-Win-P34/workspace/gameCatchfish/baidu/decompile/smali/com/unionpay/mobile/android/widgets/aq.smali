.class final Lcom/unionpay/mobile/android/widgets/aq;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/unionpay/mobile/android/widgets/ao;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/widgets/ao;I)V
    .registers 3

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/aq;->b:Lcom/unionpay/mobile/android/widgets/ao;

    iput p2, p0, Lcom/unionpay/mobile/android/widgets/aq;->a:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    const-wide/16 v8, 0x3e8

    const/4 v6, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/unionpay/mobile/android/widgets/aq;->a:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    :goto_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-gtz v4, :cond_42

    sub-long v2, v0, v2

    iget v4, p0, Lcom/unionpay/mobile/android/widgets/aq;->a:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    div-long/2addr v2, v8

    long-to-int v2, v2

    if-lez v2, :cond_42

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    const/4 v4, 0x0

    iput v4, v3, Landroid/os/Message;->what:I

    iput v2, v3, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/aq;->b:Lcom/unionpay/mobile/android/widgets/ao;

    invoke-static {v2}, Lcom/unionpay/mobile/android/widgets/ao;->b(Lcom/unionpay/mobile/android/widgets/ao;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-wide/16 v2, 0x3e8

    :try_start_33
    invoke-static {v2, v3}, Lcom/unionpay/mobile/android/widgets/aq;->sleep(J)V
    :try_end_36
    .catch Ljava/lang/InterruptedException; {:try_start_33 .. :try_end_36} :catch_37

    goto :goto_d

    :catch_37
    move-exception v0

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/aq;->b:Lcom/unionpay/mobile/android/widgets/ao;

    invoke-static {v0}, Lcom/unionpay/mobile/android/widgets/ao;->b(Lcom/unionpay/mobile/android/widgets/ao;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_41
    return-void

    :cond_42
    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/aq;->b:Lcom/unionpay/mobile/android/widgets/ao;

    invoke-static {v0}, Lcom/unionpay/mobile/android/widgets/ao;->b(Lcom/unionpay/mobile/android/widgets/ao;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_41
.end method
