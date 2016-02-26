.class final Lcom/unionpay/mobile/android/widgets/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/widgets/p;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/widgets/p;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/r;->a:Lcom/unionpay/mobile/android/widgets/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/r;->a:Lcom/unionpay/mobile/android/widgets/p;

    invoke-static {v0, p3}, Lcom/unionpay/mobile/android/widgets/p;->a(Lcom/unionpay/mobile/android/widgets/p;I)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/r;->a:Lcom/unionpay/mobile/android/widgets/p;

    invoke-static {v0}, Lcom/unionpay/mobile/android/widgets/p;->a(Lcom/unionpay/mobile/android/widgets/p;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/r;->a:Lcom/unionpay/mobile/android/widgets/p;

    invoke-static {v0}, Lcom/unionpay/mobile/android/widgets/p;->a(Lcom/unionpay/mobile/android/widgets/p;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_16
    return-void
.end method
