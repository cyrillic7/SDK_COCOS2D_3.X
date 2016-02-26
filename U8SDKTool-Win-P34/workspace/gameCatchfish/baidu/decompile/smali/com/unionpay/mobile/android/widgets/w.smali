.class final Lcom/unionpay/mobile/android/widgets/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/widgets/t;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/widgets/t;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/w;->a:Lcom/unionpay/mobile/android/widgets/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .registers 5

    if-eqz p2, :cond_49

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/w;->a:Lcom/unionpay/mobile/android/widgets/t;

    invoke-static {v0}, Lcom/unionpay/mobile/android/widgets/t;->b(Lcom/unionpay/mobile/android/widgets/t;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/w;->a:Lcom/unionpay/mobile/android/widgets/t;

    invoke-static {v0}, Lcom/unionpay/mobile/android/widgets/t;->a(Lcom/unionpay/mobile/android/widgets/t;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/w;->a:Lcom/unionpay/mobile/android/widgets/t;

    invoke-static {v0}, Lcom/unionpay/mobile/android/widgets/t;->a(Lcom/unionpay/mobile/android/widgets/t;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1c
    :goto_1c
    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/w;->a:Lcom/unionpay/mobile/android/widgets/t;

    invoke-static {v0}, Lcom/unionpay/mobile/android/widgets/t;->d(Lcom/unionpay/mobile/android/widgets/t;)Lcom/unionpay/mobile/android/widgets/t$b;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/w;->a:Lcom/unionpay/mobile/android/widgets/t;

    invoke-static {v0}, Lcom/unionpay/mobile/android/widgets/t;->d(Lcom/unionpay/mobile/android/widgets/t;)Lcom/unionpay/mobile/android/widgets/t$b;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/unionpay/mobile/android/widgets/t$b;->a(Z)V

    :cond_2d
    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/w;->a:Lcom/unionpay/mobile/android/widgets/t;

    invoke-static {v0}, Lcom/unionpay/mobile/android/widgets/t;->e(Lcom/unionpay/mobile/android/widgets/t;)Lcom/unionpay/mobile/android/widgets/t$a;

    move-result-object v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/w;->a:Lcom/unionpay/mobile/android/widgets/t;

    invoke-static {v0}, Lcom/unionpay/mobile/android/widgets/t;->e(Lcom/unionpay/mobile/android/widgets/t;)Lcom/unionpay/mobile/android/widgets/t$a;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/unionpay/mobile/android/widgets/t$a;->a(Z)V

    :cond_3e
    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/w;->a:Lcom/unionpay/mobile/android/widgets/t;

    invoke-static {}, Lcom/unionpay/mobile/android/widgets/t;->g()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/w;->a:Lcom/unionpay/mobile/android/widgets/t;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/t;->invalidate()V

    return-void

    :cond_49
    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/w;->a:Lcom/unionpay/mobile/android/widgets/t;

    invoke-static {v0}, Lcom/unionpay/mobile/android/widgets/t;->b(Lcom/unionpay/mobile/android/widgets/t;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/w;->a:Lcom/unionpay/mobile/android/widgets/t;

    invoke-static {v0}, Lcom/unionpay/mobile/android/widgets/t;->a(Lcom/unionpay/mobile/android/widgets/t;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/w;->a:Lcom/unionpay/mobile/android/widgets/t;

    invoke-static {v0}, Lcom/unionpay/mobile/android/widgets/t;->a(Lcom/unionpay/mobile/android/widgets/t;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1c
.end method
