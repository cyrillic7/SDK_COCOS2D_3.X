.class final Lcom/unionpay/mobile/android/widgets/bb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/widgets/ba;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/widgets/ba;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/bb;->a:Lcom/unionpay/mobile/android/widgets/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .registers 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/bb;->a:Lcom/unionpay/mobile/android/widgets/ba;

    invoke-static {v0}, Lcom/unionpay/mobile/android/widgets/ba;->a(Lcom/unionpay/mobile/android/widgets/ba;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    sget v1, Lcom/unionpay/mobile/android/global/a;->b:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/bb;->a:Lcom/unionpay/mobile/android/widgets/ba;

    invoke-static {v1}, Lcom/unionpay/mobile/android/widgets/ba;->b(Lcom/unionpay/mobile/android/widgets/ba;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/bb;->a:Lcom/unionpay/mobile/android/widgets/ba;

    invoke-static {v1}, Lcom/unionpay/mobile/android/widgets/ba;->a(Lcom/unionpay/mobile/android/widgets/ba;)Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
