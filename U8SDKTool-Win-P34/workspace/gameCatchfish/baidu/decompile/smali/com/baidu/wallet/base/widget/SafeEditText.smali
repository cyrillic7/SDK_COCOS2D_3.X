.class public Lcom/baidu/wallet/base/widget/SafeEditText;
.super Landroid/widget/EditText;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:I

.field private c:I

.field private d:Lcom/baidu/wallet/base/widget/SafeKeyboard;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/baidu/wallet/base/widget/SafeEditText;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/wallet/base/widget/SafeEditText;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/wallet/base/widget/SafeEditText;->b:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/baidu/wallet/base/widget/SafeEditText;->c:I

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/SafeEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/base/widget/SafeEditText;->setSelection(I)V

    return-void
.end method

.method private b()V
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeEditText;->d:Lcom/baidu/wallet/base/widget/SafeKeyboard;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeEditText;->d:Lcom/baidu/wallet/base/widget/SafeKeyboard;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/SafeKeyboard;->isCustomKeyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeEditText;->d:Lcom/baidu/wallet/base/widget/SafeKeyboard;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/SafeKeyboard;->hideCustomKeyboard()V

    :cond_11
    return-void
.end method

.method private c()V
    .registers 4

    sget-object v1, Lcom/baidu/wallet/base/widget/SafeEditText;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showkeyboard ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeEditText;->d:Lcom/baidu/wallet/base/widget/SafeKeyboard;

    if-nez v0, :cond_2f

    const/4 v0, 0x1

    :goto_12
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeEditText;->d:Lcom/baidu/wallet/base/widget/SafeKeyboard;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeEditText;->d:Lcom/baidu/wallet/base/widget/SafeKeyboard;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/SafeKeyboard;->isCustomKeyboardVisible()Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeEditText;->d:Lcom/baidu/wallet/base/widget/SafeKeyboard;

    invoke-virtual {v0, p0}, Lcom/baidu/wallet/base/widget/SafeKeyboard;->showCustomKeyboard(Lcom/baidu/wallet/base/widget/SafeEditText;)V

    :cond_2e
    return-void

    :cond_2f
    const/4 v0, 0x0

    goto :goto_12
.end method


# virtual methods
.method a()I
    .registers 2

    iget v0, p0, Lcom/baidu/wallet/base/widget/SafeEditText;->b:I

    return v0
.end method

.method a(I)Z
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget v2, p0, Lcom/baidu/wallet/base/widget/SafeEditText;->b:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_12

    const/16 v2, 0x30

    if-gt v2, p1, :cond_10

    const/16 v2, 0x39

    if-gt p1, v2, :cond_10

    :cond_f
    :goto_f
    return v0

    :cond_10
    move v0, v1

    goto :goto_f

    :cond_12
    iget v2, p0, Lcom/baidu/wallet/base/widget/SafeEditText;->b:I

    if-ne v2, v0, :cond_f

    const/16 v2, 0x80

    if-lt p1, v2, :cond_f

    move v0, v1

    goto :goto_f
.end method

.method public clear()V
    .registers 3

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/base/widget/SafeEditText;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/baidu/android/pay/SafePay;->getInstance()Lcom/baidu/android/pay/SafePay;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/SafeEditText;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/android/pay/SafePay;->clearKeyboard(I)V

    return-void
.end method

.method public getMaxLen()I
    .registers 2

    iget v0, p0, Lcom/baidu/wallet/base/widget/SafeEditText;->c:I

    return v0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 7

    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    sget-object v0, Lcom/baidu/wallet/base/widget/SafeEditText;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFocusChanged="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_21

    invoke-direct {p0}, Lcom/baidu/wallet/base/widget/SafeEditText;->c()V

    :goto_20
    return-void

    :cond_21
    invoke-direct {p0}, Lcom/baidu/wallet/base/widget/SafeEditText;->b()V

    goto :goto_20
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 8

    sget-object v0, Lcom/baidu/wallet/base/widget/SafeEditText;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTextChanged="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#start="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#before="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#after="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SafeEditText;->d:Lcom/baidu/wallet/base/widget/SafeKeyboard;

    if-eqz v0, :cond_39

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/SafeEditText;->getInputType()I

    move-result v1

    invoke-virtual {p0, v2}, Lcom/baidu/wallet/base/widget/SafeEditText;->setInputType(I)V

    invoke-virtual {p0, v2}, Lcom/baidu/wallet/base/widget/SafeEditText;->setEnabled(Z)V

    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/high16 v2, 0x80000

    or-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/baidu/wallet/base/widget/SafeEditText;->setInputType(I)V

    invoke-virtual {p0, v3}, Lcom/baidu/wallet/base/widget/SafeEditText;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/SafeEditText;->requestFocus()Z

    iget v1, p0, Lcom/baidu/wallet/base/widget/SafeEditText;->b:I

    if-eqz v1, :cond_2f

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/SafeEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/baidu/wallet/base/widget/SafeEditText;->setSelection(I)V

    :cond_2f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_38

    invoke-direct {p0}, Lcom/baidu/wallet/base/widget/SafeEditText;->c()V

    :cond_38
    :goto_38
    return v0

    :cond_39
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_38
.end method

.method public setJniText(I)V
    .registers 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_6
    if-ge v0, p1, :cond_10

    const/16 v2, 0x2a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_10
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/base/widget/SafeEditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/SafeEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/base/widget/SafeEditText;->setSelection(I)V

    return-void
.end method

.method public setKeyboard(Lcom/baidu/wallet/base/widget/SafeKeyboard;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/wallet/base/widget/SafeEditText;->d:Lcom/baidu/wallet/base/widget/SafeKeyboard;

    return-void
.end method

.method public setmType(II)V
    .registers 7

    iput p1, p0, Lcom/baidu/wallet/base/widget/SafeEditText;->b:I

    iput p2, p0, Lcom/baidu/wallet/base/widget/SafeEditText;->c:I

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    iget v3, p0, Lcom/baidu/wallet/base/widget/SafeEditText;->c:I

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/base/widget/SafeEditText;->setFilters([Landroid/text/InputFilter;)V

    invoke-static {}, Lcom/baidu/android/pay/SafePay;->getInstance()Lcom/baidu/android/pay/SafePay;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/android/pay/SafePay;->clearKeyboard(I)V

    return-void
.end method
