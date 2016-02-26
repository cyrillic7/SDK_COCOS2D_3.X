.class Lcom/baidu/wallet/base/widget/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;


# instance fields
.field final synthetic a:Lcom/baidu/wallet/base/widget/SafeKeyboard;


# direct methods
.method constructor <init>(Lcom/baidu/wallet/base/widget/SafeKeyboard;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/wallet/base/widget/p;->a:Lcom/baidu/wallet/base/widget/SafeKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(I[I)V
    .registers 8

    const/4 v4, 0x1

    invoke-static {}, Lcom/baidu/wallet/base/widget/SafeKeyboard;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKey primaryCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/p;->a:Lcom/baidu/wallet/base/widget/SafeKeyboard;

    invoke-static {v0}, Lcom/baidu/wallet/base/widget/SafeKeyboard;->a(Lcom/baidu/wallet/base/widget/SafeKeyboard;)Lcom/baidu/wallet/base/widget/SafeKeyboard$OnSafeKeyBoardListenter;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/wallet/base/widget/SafeKeyboard$OnSafeKeyBoardListenter;->getUiActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_37

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/baidu/wallet/base/widget/SafeEditText;

    if-eq v1, v2, :cond_38

    :cond_37
    :goto_37
    return-void

    :cond_38
    check-cast v0, Lcom/baidu/wallet/base/widget/SafeEditText;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/SafeEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/SafeEditText;->getSelectionStart()I

    move-result v2

    iget-object v3, p0, Lcom/baidu/wallet/base/widget/p;->a:Lcom/baidu/wallet/base/widget/SafeKeyboard;

    invoke-virtual {v3, p1}, Lcom/baidu/wallet/base/widget/SafeKeyboard;->isWordSeparator(I)Z

    move-result v3

    if-eqz v3, :cond_50

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/p;->a:Lcom/baidu/wallet/base/widget/SafeKeyboard;

    invoke-static {v0, p1}, Lcom/baidu/wallet/base/widget/SafeKeyboard;->a(Lcom/baidu/wallet/base/widget/SafeKeyboard;I)V

    goto :goto_37

    :cond_50
    const/4 v3, -0x5

    if-ne p1, v3, :cond_74

    if-eqz v1, :cond_37

    if-lez v2, :cond_37

    add-int/lit8 v3, v2, -0x1

    invoke-interface {v1, v3, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/SafeEditText;->a()I

    move-result v1

    if-eqz v1, :cond_37

    invoke-static {}, Lcom/baidu/android/pay/SafePay;->getInstance()Lcom/baidu/android/pay/SafePay;

    move-result-object v1

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/SafeEditText;->a()I

    move-result v2

    const/16 v3, 0x8

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/SafeEditText;->getMaxLen()I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/baidu/android/pay/SafePay;->inputKeyboardChar(ICI)I

    goto :goto_37

    :cond_74
    const/4 v0, -0x1

    if-ne p1, v0, :cond_7d

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/p;->a:Lcom/baidu/wallet/base/widget/SafeKeyboard;

    invoke-static {v0}, Lcom/baidu/wallet/base/widget/SafeKeyboard;->b(Lcom/baidu/wallet/base/widget/SafeKeyboard;)V

    goto :goto_37

    :cond_7d
    const/16 v0, 0xa

    if-ne p1, v0, :cond_89

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/p;->a:Lcom/baidu/wallet/base/widget/SafeKeyboard;

    const/16 v1, 0x42

    invoke-static {v0, v1}, Lcom/baidu/wallet/base/widget/SafeKeyboard;->b(Lcom/baidu/wallet/base/widget/SafeKeyboard;I)V

    goto :goto_37

    :cond_89
    const/4 v0, -0x3

    if-ne p1, v0, :cond_92

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/p;->a:Lcom/baidu/wallet/base/widget/SafeKeyboard;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/SafeKeyboard;->hideCustomKeyboard()V

    goto :goto_37

    :cond_92
    const/4 v0, -0x2

    if-ne p1, v0, :cond_da

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/p;->a:Lcom/baidu/wallet/base/widget/SafeKeyboard;

    invoke-static {v0}, Lcom/baidu/wallet/base/widget/SafeKeyboard;->c(Lcom/baidu/wallet/base/widget/SafeKeyboard;)Landroid/inputmethodservice/KeyboardView;

    move-result-object v0

    if-eqz v0, :cond_da

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/p;->a:Lcom/baidu/wallet/base/widget/SafeKeyboard;

    invoke-static {v0}, Lcom/baidu/wallet/base/widget/SafeKeyboard;->c(Lcom/baidu/wallet/base/widget/SafeKeyboard;)Landroid/inputmethodservice/KeyboardView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/p;->a:Lcom/baidu/wallet/base/widget/SafeKeyboard;

    invoke-static {v1}, Lcom/baidu/wallet/base/widget/SafeKeyboard;->d(Lcom/baidu/wallet/base/widget/SafeKeyboard;)Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;

    move-result-object v1

    if-eq v0, v1, :cond_b7

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/p;->a:Lcom/baidu/wallet/base/widget/SafeKeyboard;

    invoke-static {v1}, Lcom/baidu/wallet/base/widget/SafeKeyboard;->e(Lcom/baidu/wallet/base/widget/SafeKeyboard;)Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;

    move-result-object v1

    if-ne v0, v1, :cond_cf

    :cond_b7
    iget-object v1, p0, Lcom/baidu/wallet/base/widget/p;->a:Lcom/baidu/wallet/base/widget/SafeKeyboard;

    invoke-static {v1, v4}, Lcom/baidu/wallet/base/widget/SafeKeyboard;->a(Lcom/baidu/wallet/base/widget/SafeKeyboard;Z)Z

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/p;->a:Lcom/baidu/wallet/base/widget/SafeKeyboard;

    invoke-static {v1}, Lcom/baidu/wallet/base/widget/SafeKeyboard;->f(Lcom/baidu/wallet/base/widget/SafeKeyboard;)V

    :goto_c1
    iget-object v1, p0, Lcom/baidu/wallet/base/widget/p;->a:Lcom/baidu/wallet/base/widget/SafeKeyboard;

    invoke-static {v1}, Lcom/baidu/wallet/base/widget/SafeKeyboard;->d(Lcom/baidu/wallet/base/widget/SafeKeyboard;)Lcom/baidu/wallet/base/widget/SafeBaseKeyboard;

    move-result-object v1

    if-ne v0, v1, :cond_37

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/Keyboard;->setShifted(Z)Z

    goto/16 :goto_37

    :cond_cf
    iget-object v1, p0, Lcom/baidu/wallet/base/widget/p;->a:Lcom/baidu/wallet/base/widget/SafeKeyboard;

    invoke-static {v1, v4}, Lcom/baidu/wallet/base/widget/SafeKeyboard;->a(Lcom/baidu/wallet/base/widget/SafeKeyboard;Z)Z

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/p;->a:Lcom/baidu/wallet/base/widget/SafeKeyboard;

    invoke-static {v1}, Lcom/baidu/wallet/base/widget/SafeKeyboard;->g(Lcom/baidu/wallet/base/widget/SafeKeyboard;)V

    goto :goto_c1

    :cond_da
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/p;->a:Lcom/baidu/wallet/base/widget/SafeKeyboard;

    invoke-static {v0}, Lcom/baidu/wallet/base/widget/SafeKeyboard;->c(Lcom/baidu/wallet/base/widget/SafeKeyboard;)Landroid/inputmethodservice/KeyboardView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_ea

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p1

    :cond_ea
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/p;->a:Lcom/baidu/wallet/base/widget/SafeKeyboard;

    invoke-static {v0, p1}, Lcom/baidu/wallet/base/widget/SafeKeyboard;->a(Lcom/baidu/wallet/base/widget/SafeKeyboard;I)V

    goto/16 :goto_37
.end method

.method public onPress(I)V
    .registers 2

    return-void
.end method

.method public onRelease(I)V
    .registers 2

    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .registers 2

    return-void
.end method

.method public swipeDown()V
    .registers 1

    return-void
.end method

.method public swipeLeft()V
    .registers 1

    return-void
.end method

.method public swipeRight()V
    .registers 1

    return-void
.end method

.method public swipeUp()V
    .registers 1

    return-void
.end method
