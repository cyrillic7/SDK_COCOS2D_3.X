.class public Lcom/baidu/wallet/core/plugins/pluginproxy/WalletProxyActivity;
.super Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-virtual {p0}, Lcom/baidu/wallet/core/plugins/pluginproxy/WalletProxyActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "EbpayThemeActivit"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->style(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/core/plugins/pluginproxy/WalletProxyActivity;->setTheme(I)V

    invoke-super {p0, p1}, Lcom/baidu/wallet/core/plugins/pluginproxy/BaseWalletProxyActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
