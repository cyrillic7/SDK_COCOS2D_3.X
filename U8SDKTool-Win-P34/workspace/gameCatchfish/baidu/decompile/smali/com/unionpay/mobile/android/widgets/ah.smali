.class final Lcom/unionpay/mobile/android/widgets/ah;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/widgets/ag;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/widgets/ag;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/ah;->a:Lcom/unionpay/mobile/android/widgets/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ah;->a:Lcom/unionpay/mobile/android/widgets/ag;

    invoke-static {v0}, Lcom/unionpay/mobile/android/widgets/ag;->a(Lcom/unionpay/mobile/android/widgets/ag;)Lcom/unionpay/mobile/android/widgets/ag$a;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ah;->a:Lcom/unionpay/mobile/android/widgets/ag;

    invoke-static {v0}, Lcom/unionpay/mobile/android/widgets/ag;->a(Lcom/unionpay/mobile/android/widgets/ag;)Lcom/unionpay/mobile/android/widgets/ag$a;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/ah;->a:Lcom/unionpay/mobile/android/widgets/ag;

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/ah;->a:Lcom/unionpay/mobile/android/widgets/ag;

    invoke-static {v1}, Lcom/unionpay/mobile/android/widgets/ag;->b(Lcom/unionpay/mobile/android/widgets/ag;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unionpay/mobile/android/widgets/ag$a;->d(Ljava/lang/String;)V

    :cond_19
    return-void
.end method
