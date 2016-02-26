.class public Lcom/baidu/paysdk/login/LoginActivity;
.super Lcom/baidu/wallet/core/BaseActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled",
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/paysdk/login/LoginActivity$MyWebViewDownLoadListener;,
        Lcom/baidu/paysdk/login/LoginActivity$CustWebChromeClient;,
        Lcom/baidu/paysdk/login/LoginActivity$CustWebViewClient;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LoginActivity"

.field public static litenter:Lcom/baidu/wallet/api/ILoginBackListener;


# instance fields
.field private KEY_PASSPORT_LOGIN:Ljava/lang/String;

.field private KEY_PASSPORT_REG:Ljava/lang/String;

.field private mLoginOrReg:Landroid/widget/Button;

.field private mLoginUrl:Ljava/lang/String;

.field private mRegUrl:Ljava/lang/String;

.field private mSafePay:Lcom/baidu/android/pay/SafePay;

.field private mTitle:Landroid/widget/TextView;

.field private mType:I

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/baidu/wallet/core/BaseActivity;-><init>()V

    const-string v0, "reg"

    iput-object v0, p0, Lcom/baidu/paysdk/login/LoginActivity;->KEY_PASSPORT_REG:Ljava/lang/String;

    const-string v0, "login"

    iput-object v0, p0, Lcom/baidu/paysdk/login/LoginActivity;->KEY_PASSPORT_LOGIN:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/paysdk/login/LoginActivity;->mType:I

    return-void
.end method

.method static synthetic access$000(Lcom/baidu/paysdk/login/LoginActivity;)Landroid/webkit/WebView;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/login/LoginActivity;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/baidu/paysdk/login/LoginActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/login/LoginActivity;->KEY_PASSPORT_LOGIN:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/baidu/paysdk/login/LoginActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/login/LoginActivity;->KEY_PASSPORT_REG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/baidu/paysdk/login/LoginActivity;)Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/login/LoginActivity;->mLoginOrReg:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700(Lcom/baidu/paysdk/login/LoginActivity;)Lcom/baidu/android/pay/SafePay;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/login/LoginActivity;->mSafePay:Lcom/baidu/android/pay/SafePay;

    return-object v0
.end method

.method static synthetic access$800(Lcom/baidu/paysdk/login/LoginActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/login/LoginActivity;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method private buildUrl(I)Ljava/lang/String;
    .registers 5

    iput p1, p0, Lcom/baidu/paysdk/login/LoginActivity;->mType:I

    invoke-static {p0}, Lcom/baidu/wallet/core/DebugConfig;->getInstance(Landroid/content/Context;)Lcom/baidu/wallet/core/DebugConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/DebugConfig;->getWalletPassportHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    if-nez p1, :cond_3a

    iget-object v1, p0, Lcom/baidu/paysdk/login/LoginActivity;->KEY_PASSPORT_LOGIN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_19
    :goto_19
    const-string v1, "tpl"

    const-string v2, "bp"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "adapter"

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "u"

    const-string v2, "http://www.baidu.com"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "smsLoginLink"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3a
    const/4 v1, 0x1

    if-ne p1, v1, :cond_19

    iget-object v1, p0, Lcom/baidu/paysdk/login/LoginActivity;->KEY_PASSPORT_REG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_19
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2b

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/baidu/paysdk/login/LoginActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/baidu/paysdk/login/LoginActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    :cond_1a
    :goto_1a
    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    sget-object v0, Lcom/baidu/paysdk/login/LoginActivity;->litenter:Lcom/baidu/wallet/api/ILoginBackListener;

    if-eqz v0, :cond_27

    sget-object v0, Lcom/baidu/paysdk/login/LoginActivity;->litenter:Lcom/baidu/wallet/api/ILoginBackListener;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/baidu/wallet/api/ILoginBackListener;->onFail(ILjava/lang/String;)V

    :cond_27
    invoke-virtual {p0}, Lcom/baidu/paysdk/login/LoginActivity;->finish()V

    goto :goto_1a

    :cond_2b
    invoke-super {p0, p1}, Lcom/baidu/wallet/core/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1b
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/baidu/paysdk/login/LoginActivity;->mLoginOrReg:Landroid/widget/Button;

    if-ne p1, v0, :cond_2e

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_2f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/baidu/paysdk/login/LoginActivity;->mRegUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-direct {p0, v2}, Lcom/baidu/paysdk/login/LoginActivity;->buildUrl(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/login/LoginActivity;->mRegUrl:Ljava/lang/String;

    :cond_27
    iget-object v0, p0, Lcom/baidu/paysdk/login/LoginActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/baidu/paysdk/login/LoginActivity;->mRegUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_2e
    :goto_2e
    return-void

    :cond_2f
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_2e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/baidu/paysdk/login/LoginActivity;->mLoginUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-direct {p0, v3}, Lcom/baidu/paysdk/login/LoginActivity;->buildUrl(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/login/LoginActivity;->mLoginUrl:Ljava/lang/String;

    :cond_4a
    iget-object v0, p0, Lcom/baidu/paysdk/login/LoginActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/baidu/paysdk/login/LoginActivity;->mLoginUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_2e
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/baidu/wallet/core/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "LoginActivity onCreate()"

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_16

    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/baidu/paysdk/login/LoginActivity;->mType:I

    :cond_16
    invoke-static {}, Lcom/baidu/android/pay/SafePay;->getInstance()Lcom/baidu/android/pay/SafePay;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/login/LoginActivity;->mSafePay:Lcom/baidu/android/pay/SafePay;

    const-string v0, "ebpay_layout_login"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->layout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/login/LoginActivity;->setContentView(I)V

    const-string v0, "title_back"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/baidu/paysdk/login/LoginActivity$1;

    invoke-direct {v1, p0}, Lcom/baidu/paysdk/login/LoginActivity$1;-><init>(Lcom/baidu/paysdk/login/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "btn_Login_or_reg"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/paysdk/login/LoginActivity;->mLoginOrReg:Landroid/widget/Button;

    iget-object v0, p0, Lcom/baidu/paysdk/login/LoginActivity;->mLoginOrReg:Landroid/widget/Button;

    const-string v1, "ebpay_reg"

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    const-string v0, "ebpay_title_text"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/paysdk/login/LoginActivity;->mTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/baidu/paysdk/login/LoginActivity;->mTitle:Landroid/widget/TextView;

    const-string v1, "ebpay_account_login"

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/login/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "wallet_base_loading"

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/login/LoginActivity;->mDialogMsg:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/paysdk/login/LoginActivity;->mLoginOrReg:Landroid/widget/Button;

    iget v1, p0, Lcom/baidu/paysdk/login/LoginActivity;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/baidu/paysdk/login/LoginActivity;->mLoginOrReg:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/baidu/paysdk/login/LoginActivity;->mLoginOrReg:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    const-string v0, "title_bar_right_img"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    const-string v0, "cust_webview"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/baidu/paysdk/login/LoginActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/baidu/paysdk/login/LoginActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    iget-object v0, p0, Lcom/baidu/paysdk/login/LoginActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/baidu/paysdk/login/LoginActivity$CustWebViewClient;

    invoke-direct {v1, p0, v2}, Lcom/baidu/paysdk/login/LoginActivity$CustWebViewClient;-><init>(Lcom/baidu/paysdk/login/LoginActivity;Lcom/baidu/paysdk/login/LoginActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/baidu/paysdk/login/LoginActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/baidu/paysdk/login/LoginActivity$CustWebChromeClient;

    invoke-direct {v1, p0, v2}, Lcom/baidu/paysdk/login/LoginActivity$CustWebChromeClient;-><init>(Lcom/baidu/paysdk/login/LoginActivity;Lcom/baidu/paysdk/login/LoginActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/baidu/paysdk/login/LoginActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/baidu/paysdk/login/LoginActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/login/LoginActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->clearCache(Z)V

    iget-object v0, p0, Lcom/baidu/paysdk/login/LoginActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/baidu/paysdk/login/LoginActivity$MyWebViewDownLoadListener;

    invoke-direct {v1, p0, v2}, Lcom/baidu/paysdk/login/LoginActivity$MyWebViewDownLoadListener;-><init>(Lcom/baidu/paysdk/login/LoginActivity;Lcom/baidu/paysdk/login/LoginActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    iget-object v0, p0, Lcom/baidu/paysdk/login/LoginActivity;->mWebView:Landroid/webkit/WebView;

    iget v1, p0, Lcom/baidu/paysdk/login/LoginActivity;->mType:I

    invoke-direct {p0, v1}, Lcom/baidu/paysdk/login/LoginActivity;->buildUrl(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_fe

    iget-object v0, p0, Lcom/baidu/paysdk/login/LoginActivity;->mWebView:Landroid/webkit/WebView;

    const-string v1, "searchBoxJavaBridge_"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    :cond_fe
    return-void
.end method

.method public onDestroy()V
    .registers 1

    invoke-super {p0}, Lcom/baidu/wallet/core/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/baidu/wallet/core/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "type"

    iget v1, p0, Lcom/baidu/paysdk/login/LoginActivity;->mType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
