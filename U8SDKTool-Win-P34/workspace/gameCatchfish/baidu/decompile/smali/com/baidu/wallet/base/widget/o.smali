.class Lcom/baidu/wallet/base/widget/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/wallet/base/widget/SafeKeyboard;


# direct methods
.method constructor <init>(Lcom/baidu/wallet/base/widget/SafeKeyboard;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/wallet/base/widget/o;->a:Lcom/baidu/wallet/base/widget/SafeKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/o;->a:Lcom/baidu/wallet/base/widget/SafeKeyboard;

    invoke-static {v0}, Lcom/baidu/wallet/base/widget/SafeKeyboard;->c(Lcom/baidu/wallet/base/widget/SafeKeyboard;)Landroid/inputmethodservice/KeyboardView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/KeyboardView;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/o;->a:Lcom/baidu/wallet/base/widget/SafeKeyboard;

    invoke-static {v0}, Lcom/baidu/wallet/base/widget/SafeKeyboard;->c(Lcom/baidu/wallet/base/widget/SafeKeyboard;)Landroid/inputmethodservice/KeyboardView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/KeyboardView;->setEnabled(Z)V

    return-void
.end method
