.class final Lcom/unionpay/mobile/android/nocard/views/bi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/nocard/views/bh;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/nocard/views/bh;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/bi;->a:Lcom/unionpay/mobile/android/nocard/views/bh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    :cond_7
    :goto_7
    const/4 v0, 0x0

    return v0

    :pswitch_9
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_7

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method
