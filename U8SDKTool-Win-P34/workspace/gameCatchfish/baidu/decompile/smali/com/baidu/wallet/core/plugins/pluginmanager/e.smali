.class Lcom/baidu/wallet/core/plugins/pluginmanager/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/View$OnClickListener;

.field final synthetic b:Z

.field final synthetic c:Landroid/view/View$OnClickListener;

.field final synthetic d:Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;


# direct methods
.method constructor <init>(Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;Landroid/view/View$OnClickListener;ZLandroid/view/View$OnClickListener;)V
    .registers 5

    iput-object p1, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/e;->d:Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;

    iput-object p2, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/e;->a:Landroid/view/View$OnClickListener;

    iput-boolean p3, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/e;->b:Z

    iput-object p4, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/e;->c:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/e;->d:Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;

    invoke-static {v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->b(Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;)Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;

    move-result-object v0

    if-nez v0, :cond_c

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/e;->d:Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;

    invoke-static {v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->d(Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/e;->d:Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/NetworkUtils;->isWifiNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_85

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/e;->d:Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;

    invoke-static {v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->b(Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;)Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->setNetworkTyptViewVisibility(I)V

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/e;->d:Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;

    invoke-static {v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->b(Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;)Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/e;->d:Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;

    const-string v2, "bd_wallet_non_wifi_info"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->setNetworkTypeText(Ljava/lang/String;)V

    :goto_37
    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/e;->d:Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;

    invoke-static {v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->b(Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;)Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/e;->d:Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;

    const-string v2, "bd_wallet_update_btn"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/e;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->setPositiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/e;->d:Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;

    invoke-static {v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->b(Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;)Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/e;->d:Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;

    const-string v2, "ebpay_update_info_tips"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->setLeftTitleText(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/e;->b:Z

    if-eqz v0, :cond_8f

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/e;->d:Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;

    invoke-static {v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->b(Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;)Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/e;->d:Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;

    const-string v2, "bd_wallet_update_ret_home_index_btn"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/e;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->setNegativeBtn(ILandroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/e;->d:Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;

    invoke-static {v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->e(Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_7b
    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/e;->d:Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;

    invoke-static {v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->b(Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;)Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->show()V

    goto :goto_b

    :cond_85
    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/e;->d:Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;

    invoke-static {v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->b(Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;)Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->setNetworkTyptViewVisibility(I)V

    goto :goto_37

    :cond_8f
    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/e;->d:Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;

    invoke-static {v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->b(Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;)Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/e;->d:Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;

    const-string v2, "bd_wallet_next_update_tips"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/e;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->setNegativeBtn(ILandroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/e;->d:Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;

    invoke-static {v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->e(Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_7b
.end method
