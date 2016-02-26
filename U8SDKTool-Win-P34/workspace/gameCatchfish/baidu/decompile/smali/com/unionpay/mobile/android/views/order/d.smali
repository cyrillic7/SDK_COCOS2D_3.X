.class final Lcom/unionpay/mobile/android/views/order/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/views/order/b;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/views/order/b;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/views/order/d;->a:Lcom/unionpay/mobile/android/views/order/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/d;->a:Lcom/unionpay/mobile/android/views/order/b;

    invoke-static {v0}, Lcom/unionpay/mobile/android/views/order/b;->b(Lcom/unionpay/mobile/android/views/order/b;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/d;->a:Lcom/unionpay/mobile/android/views/order/b;

    invoke-static {v0}, Lcom/unionpay/mobile/android/views/order/b;->b(Lcom/unionpay/mobile/android/views/order/b;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_11
    return-void
.end method
