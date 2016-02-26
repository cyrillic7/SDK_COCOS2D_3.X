.class final Lcom/unionpay/mobile/android/widgets/ab;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/widgets/z;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/widgets/z;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/ab;->a:Lcom/unionpay/mobile/android/widgets/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ab;->a:Lcom/unionpay/mobile/android/widgets/z;

    invoke-virtual {v0, p1}, Lcom/unionpay/mobile/android/widgets/z;->a(Landroid/text/Editable;)V

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 8

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ab;->a:Lcom/unionpay/mobile/android/widgets/z;

    invoke-static {v0}, Lcom/unionpay/mobile/android/widgets/z;->a(Lcom/unionpay/mobile/android/widgets/z;)Lcom/unionpay/mobile/android/widgets/z$a;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ab;->a:Lcom/unionpay/mobile/android/widgets/z;

    invoke-static {v0}, Lcom/unionpay/mobile/android/widgets/z;->a(Lcom/unionpay/mobile/android/widgets/z;)Lcom/unionpay/mobile/android/widgets/z$a;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/ab;->a:Lcom/unionpay/mobile/android/widgets/z;

    iget-object v1, v1, Lcom/unionpay/mobile/android/widgets/z;->b:Lcom/unionpay/mobile/android/widgets/t;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/unionpay/mobile/android/widgets/z$a;->a(Lcom/unionpay/mobile/android/widgets/t;Ljava/lang/String;)V

    :cond_19
    return-void
.end method
