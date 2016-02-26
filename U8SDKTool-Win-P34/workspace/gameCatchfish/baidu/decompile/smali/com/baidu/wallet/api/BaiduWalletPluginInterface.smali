.class public interface abstract Lcom/baidu/wallet/api/BaiduWalletPluginInterface;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getBindCardAmount(Landroid/content/Context;Lcom/baidu/android/pay/UserInfoQueryListener;)V
.end method

.method public abstract getWaitingRecvCount(Landroid/content/Context;Lcom/baidu/android/pay/UserInfoQueryListener;)V
.end method

.method public abstract getWalletServiceList(Landroid/content/Context;)J
.end method

.method public abstract hasNewBalance(Landroid/content/Context;Lcom/baidu/wallet/api/BaiduWalletPluginManagerProxy$IHasBalanceCallback;)V
.end method

.method public abstract init(Landroid/content/Context;Ljava/util/Map;Lcom/baidu/android/pay/InitCallBack;)V
.end method
