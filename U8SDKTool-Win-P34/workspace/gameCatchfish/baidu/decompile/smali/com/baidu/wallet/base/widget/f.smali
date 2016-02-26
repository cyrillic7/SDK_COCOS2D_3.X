.class Lcom/baidu/wallet/base/widget/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/baidu/wallet/base/widget/DialogFragment;


# direct methods
.method constructor <init>(Lcom/baidu/wallet/base/widget/DialogFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/wallet/base/widget/f;->a:Lcom/baidu/wallet/base/widget/DialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4

    const-string v0, "xl"

    const-string v1, "DialogFragment.onDialogCancle@"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/f;->a:Lcom/baidu/wallet/base/widget/DialogFragment;

    invoke-static {v0}, Lcom/baidu/wallet/base/widget/DialogFragment;->e(Lcom/baidu/wallet/base/widget/DialogFragment;)Lcom/baidu/wallet/core/BaseActivity;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/f;->a:Lcom/baidu/wallet/base/widget/DialogFragment;

    invoke-static {v0}, Lcom/baidu/wallet/base/widget/DialogFragment;->f(Lcom/baidu/wallet/base/widget/DialogFragment;)Lcom/baidu/wallet/core/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/BaseActivity;->onBackPressed()V

    :cond_18
    return-void
.end method
