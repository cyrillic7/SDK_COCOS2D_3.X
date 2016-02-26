.class Lcom/baidu/wallet/base/widget/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/baidu/wallet/base/widget/DialogFragment;


# direct methods
.method constructor <init>(Lcom/baidu/wallet/base/widget/DialogFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/wallet/base/widget/g;->a:Lcom/baidu/wallet/base/widget/DialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4

    const-string v0, "xl"

    const-string v1, "PluginFake.onDialogCancle@dialog_s2"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/g;->a:Lcom/baidu/wallet/base/widget/DialogFragment;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/DialogFragment;->cancleRequest()V

    return-void
.end method
