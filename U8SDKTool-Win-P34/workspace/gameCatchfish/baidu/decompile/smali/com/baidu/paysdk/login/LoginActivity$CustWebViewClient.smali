.class Lcom/baidu/paysdk/login/LoginActivity$CustWebViewClient;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/paysdk/login/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/paysdk/login/LoginActivity;


# direct methods
.method private constructor <init>(Lcom/baidu/paysdk/login/LoginActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/login/LoginActivity$CustWebViewClient;->this$0:Lcom/baidu/paysdk/login/LoginActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/paysdk/login/LoginActivity;Lcom/baidu/paysdk/login/LoginActivity$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/baidu/paysdk/login/LoginActivity$CustWebViewClient;-><init>(Lcom/baidu/paysdk/login/LoginActivity;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 6

    const-string v0, "onProgressChanged"

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/baidu/paysdk/login/LoginActivity$CustWebViewClient;->this$0:Lcom/baidu/paysdk/login/LoginActivity;

    # getter for: Lcom/baidu/paysdk/login/LoginActivity;->mTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/baidu/paysdk/login/LoginActivity;->access$800(Lcom/baidu/paysdk/login/LoginActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paysdk/login/LoginActivity$CustWebViewClient;->this$0:Lcom/baidu/paysdk/login/LoginActivity;

    const-string v2, "ebpay_bd_wallet"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_20
    iget-object v0, p0, Lcom/baidu/paysdk/login/LoginActivity$CustWebViewClient;->this$0:Lcom/baidu/paysdk/login/LoginActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    const-string v0, "LoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageFinished():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 12

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/baidu/paysdk/login/LoginActivity$CustWebViewClient;->this$0:Lcom/baidu/paysdk/login/LoginActivity;

    invoke-static {v0}, Lcom/baidu/wallet/core/DebugConfig;->getInstance(Landroid/content/Context;)Lcom/baidu/wallet/core/DebugConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/DebugConfig;->getWalletPassportHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/paysdk/login/LoginActivity$CustWebViewClient;->this$0:Lcom/baidu/paysdk/login/LoginActivity;

    invoke-static {v2}, Lcom/baidu/wallet/core/DebugConfig;->getInstance(Landroid/content/Context;)Lcom/baidu/wallet/core/DebugConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/wallet/core/DebugConfig;->getWalletPassportHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/paysdk/login/LoginActivity$CustWebViewClient;->this$0:Lcom/baidu/paysdk/login/LoginActivity;

    # getter for: Lcom/baidu/paysdk/login/LoginActivity;->KEY_PASSPORT_LOGIN:Ljava/lang/String;
    invoke-static {v3}, Lcom/baidu/paysdk/login/LoginActivity;->access$400(Lcom/baidu/paysdk/login/LoginActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/baidu/paysdk/login/LoginActivity$CustWebViewClient;->this$0:Lcom/baidu/paysdk/login/LoginActivity;

    # getter for: Lcom/baidu/paysdk/login/LoginActivity;->KEY_PASSPORT_REG:Ljava/lang/String;
    invoke-static {v3}, Lcom/baidu/paysdk/login/LoginActivity;->access$500(Lcom/baidu/paysdk/login/LoginActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_100

    iget-object v0, p0, Lcom/baidu/paysdk/login/LoginActivity$CustWebViewClient;->this$0:Lcom/baidu/paysdk/login/LoginActivity;

    # getter for: Lcom/baidu/paysdk/login/LoginActivity;->mLoginOrReg:Landroid/widget/Button;
    invoke-static {v0}, Lcom/baidu/paysdk/login/LoginActivity;->access$600(Lcom/baidu/paysdk/login/LoginActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/login/LoginActivity$CustWebViewClient;->this$0:Lcom/baidu/paysdk/login/LoginActivity;

    # getter for: Lcom/baidu/paysdk/login/LoginActivity;->mLoginOrReg:Landroid/widget/Button;
    invoke-static {v0}, Lcom/baidu/paysdk/login/LoginActivity;->access$600(Lcom/baidu/paysdk/login/LoginActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/paysdk/login/LoginActivity$CustWebViewClient;->this$0:Lcom/baidu/paysdk/login/LoginActivity;

    const-string v3, "ebpay_reg"

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    :goto_61
    const-string v0, "http://www.baidu.com"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_149

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_149

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_7f
    if-ge v0, v3, :cond_149

    aget-object v4, v2, v0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_fd

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "BDUSS="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_fd

    const-string v5, "BDUSS="

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const-string v6, "BDUSS="

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/paysdk/login/LoginActivity$CustWebViewClient;->this$0:Lcom/baidu/paysdk/login/LoginActivity;

    const-string v6, "cookie"

    invoke-virtual {v5, v6, v1}, Lcom/baidu/paysdk/login/LoginActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "bduss_cookie"

    iget-object v7, p0, Lcom/baidu/paysdk/login/LoginActivity$CustWebViewClient;->this$0:Lcom/baidu/paysdk/login/LoginActivity;

    # getter for: Lcom/baidu/paysdk/login/LoginActivity;->mSafePay:Lcom/baidu/android/pay/SafePay;
    invoke-static {v7}, Lcom/baidu/paysdk/login/LoginActivity;->access$700(Lcom/baidu/paysdk/login/LoginActivity;)Lcom/baidu/android/pay/SafePay;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/baidu/android/pay/SafePay;->localEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/baidu/paysdk/storage/PayDataCache;->setIsOwnLogin(Z)V

    iget-object v5, p0, Lcom/baidu/paysdk/login/LoginActivity$CustWebViewClient;->this$0:Lcom/baidu/paysdk/login/LoginActivity;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/baidu/paysdk/login/LoginActivity;->setResult(I)V

    sget-object v5, Lcom/baidu/paysdk/login/LoginActivity;->litenter:Lcom/baidu/wallet/api/ILoginBackListener;

    if-eqz v5, :cond_12f

    new-instance v5, Lcom/baidu/wallet/base/datamodel/AccountManager$User;

    iget-object v6, p0, Lcom/baidu/paysdk/login/LoginActivity$CustWebViewClient;->this$0:Lcom/baidu/paysdk/login/LoginActivity;

    invoke-static {v6}, Lcom/baidu/wallet/base/datamodel/AccountManager;->getInstance(Landroid/content/Context;)Lcom/baidu/wallet/base/datamodel/AccountManager;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v5, v6, v1, v4}, Lcom/baidu/wallet/base/datamodel/AccountManager$User;-><init>(Lcom/baidu/wallet/base/datamodel/AccountManager;ILjava/lang/String;)V

    if-eqz v5, :cond_ef

    iget-object v6, p0, Lcom/baidu/paysdk/login/LoginActivity$CustWebViewClient;->this$0:Lcom/baidu/paysdk/login/LoginActivity;

    invoke-static {v6, v5}, Lcom/baidu/wallet/base/datamodel/AccountManager;->getInstance(Landroid/content/Context;Lcom/baidu/wallet/base/datamodel/AccountManager$User;)Lcom/baidu/wallet/base/datamodel/AccountManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/baidu/wallet/base/datamodel/AccountManager;->sync(Lcom/baidu/wallet/base/datamodel/AccountManager$User;)V

    :cond_ef
    sget-object v5, Lcom/baidu/paysdk/login/LoginActivity;->litenter:Lcom/baidu/wallet/api/ILoginBackListener;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v1, v4}, Lcom/baidu/wallet/api/ILoginBackListener;->onSuccess(ILjava/lang/String;)V

    :cond_f8
    :goto_f8
    iget-object v4, p0, Lcom/baidu/paysdk/login/LoginActivity$CustWebViewClient;->this$0:Lcom/baidu/paysdk/login/LoginActivity;

    invoke-virtual {v4}, Lcom/baidu/paysdk/login/LoginActivity;->finish()V

    :cond_fd
    add-int/lit8 v0, v0, 0x1

    goto :goto_7f

    :cond_100
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_122

    iget-object v0, p0, Lcom/baidu/paysdk/login/LoginActivity$CustWebViewClient;->this$0:Lcom/baidu/paysdk/login/LoginActivity;

    # getter for: Lcom/baidu/paysdk/login/LoginActivity;->mLoginOrReg:Landroid/widget/Button;
    invoke-static {v0}, Lcom/baidu/paysdk/login/LoginActivity;->access$600(Lcom/baidu/paysdk/login/LoginActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/login/LoginActivity$CustWebViewClient;->this$0:Lcom/baidu/paysdk/login/LoginActivity;

    # getter for: Lcom/baidu/paysdk/login/LoginActivity;->mLoginOrReg:Landroid/widget/Button;
    invoke-static {v0}, Lcom/baidu/paysdk/login/LoginActivity;->access$600(Lcom/baidu/paysdk/login/LoginActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/paysdk/login/LoginActivity$CustWebViewClient;->this$0:Lcom/baidu/paysdk/login/LoginActivity;

    const-string v3, "ebpay_login"

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_61

    :cond_122
    iget-object v0, p0, Lcom/baidu/paysdk/login/LoginActivity$CustWebViewClient;->this$0:Lcom/baidu/paysdk/login/LoginActivity;

    # getter for: Lcom/baidu/paysdk/login/LoginActivity;->mLoginOrReg:Landroid/widget/Button;
    invoke-static {v0}, Lcom/baidu/paysdk/login/LoginActivity;->access$600(Lcom/baidu/paysdk/login/LoginActivity;)Landroid/widget/Button;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_61

    :cond_12f
    new-instance v5, Lcom/baidu/wallet/base/datamodel/AccountManager$User;

    iget-object v6, p0, Lcom/baidu/paysdk/login/LoginActivity$CustWebViewClient;->this$0:Lcom/baidu/paysdk/login/LoginActivity;

    invoke-static {v6}, Lcom/baidu/wallet/base/datamodel/AccountManager;->getInstance(Landroid/content/Context;)Lcom/baidu/wallet/base/datamodel/AccountManager;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v5, v6, v1, v4}, Lcom/baidu/wallet/base/datamodel/AccountManager$User;-><init>(Lcom/baidu/wallet/base/datamodel/AccountManager;ILjava/lang/String;)V

    if-eqz v5, :cond_f8

    iget-object v4, p0, Lcom/baidu/paysdk/login/LoginActivity$CustWebViewClient;->this$0:Lcom/baidu/paysdk/login/LoginActivity;

    invoke-static {v4, v5}, Lcom/baidu/wallet/base/datamodel/AccountManager;->getInstance(Landroid/content/Context;Lcom/baidu/wallet/base/datamodel/AccountManager$User;)Lcom/baidu/wallet/base/datamodel/AccountManager;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/baidu/wallet/base/datamodel/AccountManager;->sync(Lcom/baidu/wallet/base/datamodel/AccountManager$User;)V

    goto :goto_f8

    :cond_149
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 6

    const-string v0, "onReceivedSslError"

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/login/LoginActivity$CustWebViewClient;->this$0:Lcom/baidu/paysdk/login/LoginActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3b

    const-string v0, "sms:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "smsto:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sms:"

    const-string v2, ""

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/baidu/paysdk/login/LoginActivity$CustWebViewClient;->this$0:Lcom/baidu/paysdk/login/LoginActivity;

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/login/LoginActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    :goto_3a
    return v0

    :cond_3b
    const/4 v0, 0x0

    goto :goto_3a
.end method
