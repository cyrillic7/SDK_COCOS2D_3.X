.class final Lcom/unionpay/mobile/android/widgets/ak;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/widgets/ai;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/widgets/ai;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/ak;->a:Lcom/unionpay/mobile/android/widgets/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/ak;->a:Lcom/unionpay/mobile/android/widgets/ai;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/unionpay/mobile/android/widgets/ai;->a(Lcom/unionpay/mobile/android/widgets/ai;II)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ak;->a:Lcom/unionpay/mobile/android/widgets/ai;

    invoke-static {v0}, Lcom/unionpay/mobile/android/widgets/ai;->a(Lcom/unionpay/mobile/android/widgets/ai;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ak;->a:Lcom/unionpay/mobile/android/widgets/ai;

    invoke-static {v0}, Lcom/unionpay/mobile/android/widgets/ai;->a(Lcom/unionpay/mobile/android/widgets/ai;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_21
    return-void
.end method
