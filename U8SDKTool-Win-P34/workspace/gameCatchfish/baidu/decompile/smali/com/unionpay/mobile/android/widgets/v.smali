.class final Lcom/unionpay/mobile/android/widgets/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/widgets/t;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/widgets/t;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/v;->a:Lcom/unionpay/mobile/android/widgets/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/v;->a:Lcom/unionpay/mobile/android/widgets/t;

    invoke-static {v0}, Lcom/unionpay/mobile/android/widgets/t;->a(Lcom/unionpay/mobile/android/widgets/t;)Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/v;->a:Lcom/unionpay/mobile/android/widgets/t;

    invoke-static {v0}, Lcom/unionpay/mobile/android/widgets/t;->b(Lcom/unionpay/mobile/android/widgets/t;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/v;->a:Lcom/unionpay/mobile/android/widgets/t;

    invoke-static {v0}, Lcom/unionpay/mobile/android/widgets/t;->c(Lcom/unionpay/mobile/android/widgets/t;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/v;->a:Lcom/unionpay/mobile/android/widgets/t;

    invoke-static {v0}, Lcom/unionpay/mobile/android/widgets/t;->a(Lcom/unionpay/mobile/android/widgets/t;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8

    :cond_28
    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/v;->a:Lcom/unionpay/mobile/android/widgets/t;

    invoke-static {v0}, Lcom/unionpay/mobile/android/widgets/t;->a(Lcom/unionpay/mobile/android/widgets/t;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8
.end method
