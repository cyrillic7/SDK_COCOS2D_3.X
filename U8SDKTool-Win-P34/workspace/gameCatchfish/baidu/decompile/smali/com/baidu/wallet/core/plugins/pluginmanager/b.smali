.class Lcom/baidu/wallet/core/plugins/pluginmanager/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;


# direct methods
.method constructor <init>(Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/b;->a:Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/b;->a:Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;

    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/g;->a(Landroid/content/Context;)Lcom/baidu/wallet/core/plugins/pluginmanager/g;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/b;->a:Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;

    invoke-static {v1}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->a(Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/plugins/pluginmanager/g;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/b;->a:Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;

    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->finishWithoutAnim()V

    const/4 v0, 0x1

    return v0
.end method
