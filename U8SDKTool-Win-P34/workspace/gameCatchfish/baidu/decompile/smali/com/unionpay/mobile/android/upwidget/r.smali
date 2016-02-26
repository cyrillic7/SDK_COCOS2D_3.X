.class final Lcom/unionpay/mobile/android/upwidget/r;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/upwidget/UPRadiationView;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/upwidget/UPRadiationView;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/upwidget/r;->a:Lcom/unionpay/mobile/android/upwidget/UPRadiationView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_34

    :cond_8
    :goto_8
    return-void

    :pswitch_9
    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/r;->a:Lcom/unionpay/mobile/android/upwidget/UPRadiationView;

    invoke-static {v0}, Lcom/unionpay/mobile/android/upwidget/UPRadiationView;->a(Lcom/unionpay/mobile/android/upwidget/UPRadiationView;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/r;->a:Lcom/unionpay/mobile/android/upwidget/UPRadiationView;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upwidget/UPRadiationView;->invalidate()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/r;->a:Lcom/unionpay/mobile/android/upwidget/UPRadiationView;

    invoke-static {v0}, Lcom/unionpay/mobile/android/upwidget/UPRadiationView;->b(Lcom/unionpay/mobile/android/upwidget/UPRadiationView;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/r;->a:Lcom/unionpay/mobile/android/upwidget/UPRadiationView;

    invoke-static {v0}, Lcom/unionpay/mobile/android/upwidget/UPRadiationView;->b(Lcom/unionpay/mobile/android/upwidget/UPRadiationView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/r;->a:Lcom/unionpay/mobile/android/upwidget/UPRadiationView;

    invoke-static {v0}, Lcom/unionpay/mobile/android/upwidget/UPRadiationView;->c(Lcom/unionpay/mobile/android/upwidget/UPRadiationView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_8

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_9
    .end packed-switch
.end method
