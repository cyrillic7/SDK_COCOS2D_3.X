.class public Lcom/baidu/paysdk/ui/WebViewActivity;
.super Lcom/baidu/wallet/core/BaseActivity;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/paysdk/ui/WebViewActivity$CustomWebViewClient;,
        Lcom/baidu/paysdk/ui/WebViewActivity$CustomWebChromeClient;
    }
.end annotation


# static fields
.field public static final CHANNEL_DISCOUNT_PARAMS:Ljava/lang/String; = "channel_discount_params"

.field public static final EXTRA_PARAM:Ljava/lang/String; = "extra_param"

.field static final FAQ_URL:Ljava/lang/String; = "https://www.baifubao.com/content/mywallet/h5/com_problem.html"

.field public static final JUMP_URL:Ljava/lang/String; = "jump_url"

.field static final SAFE_TIPS_URL:Ljava/lang/String; = "https://www.baifubao.com/content/mywallet/h5/safe_tips.html"

.field public static final SHOW_ALL_SUPPORT_BIND_URL:Ljava/lang/String; = "https://www.baifubao.com/content/mywallet/h5/query_bank_list.html"

.field public static final SHOW_ALL_SUPPORT_PAY_URL:Ljava/lang/String; = "https://www.baifubao.com/content/mywallet/h5/query_bank_list.html"

.field public static final SHOW_ALL_SUPPORT_ZHUAN_URL:Ljava/lang/String; = "https://www.baifubao.com/content/mywallet/h5/query_bank_list.html?debit_only=1"

.field public static final SHOW_ALL_WALLET_COUPON_URL:Ljava/lang/String; = "/content/mywallet/h5/sdk_page/sdk_quan_manager.html?"

.field public static final SHOW_UNIFY_QUERY__BANK_URL:Ljava/lang/String; = "https://www.baifubao.com/content/mywallet/h5/query_bank_list.html"

.field private static final TAG:Ljava/lang/String;

.field public static final TRANSFER_GUIDE:Ljava/lang/String; = "http://co.baifubao.com/content/mywallet/h5/trans_guide.html"

.field public static final WEBVIEW_TITLE:Ljava/lang/String; = "webview_title"

.field public static final WEBVIEW_TITLE_STRING:Ljava/lang/String; = "webview_title_string"


# instance fields
.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/baidu/paysdk/ui/WebViewActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/paysdk/ui/WebViewActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/wallet/core/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/baidu/paysdk/ui/WebViewActivity;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/paysdk/ui/WebViewActivity;->initActionBar1(Ljava/lang/String;)V

    return-void
.end method

.method private initActionBar(Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/WebViewActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "bdactionbar"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/base/widget/BdActionBar;

    if-eqz v0, :cond_42

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/WebViewActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "wallet_base_tab_bar_bg"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->drawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/BdActionBar;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/WebViewActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/BdActionBar;->setTitle(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/BdActionBar;->setTitleAlignment(I)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/BdActionBar;->setTitleColor(I)V

    new-instance v1, Lcom/baidu/paysdk/ui/WebViewActivity$1;

    invoke-direct {v1, p0}, Lcom/baidu/paysdk/ui/WebViewActivity$1;-><init>(Lcom/baidu/paysdk/ui/WebViewActivity;)V

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/BdActionBar;->setLeftZoneOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/baidu/paysdk/ui/WebViewActivity$2;

    invoke-direct {v1, p0}, Lcom/baidu/paysdk/ui/WebViewActivity$2;-><init>(Lcom/baidu/paysdk/ui/WebViewActivity;)V

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/BdActionBar;->setRightLogoutOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_42
    return-void
.end method

.method private initActionBar1(Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/WebViewActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "bdactionbar"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/base/widget/BdActionBar;

    if-eqz v0, :cond_3a

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/WebViewActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "wallet_base_tab_bar_bg"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->drawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/BdActionBar;->setBackgroundResource(I)V

    invoke-virtual {v0, p1}, Lcom/baidu/wallet/base/widget/BdActionBar;->setTitle(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/BdActionBar;->setTitleAlignment(I)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/BdActionBar;->setTitleColor(I)V

    new-instance v1, Lcom/baidu/paysdk/ui/WebViewActivity$3;

    invoke-direct {v1, p0}, Lcom/baidu/paysdk/ui/WebViewActivity$3;-><init>(Lcom/baidu/paysdk/ui/WebViewActivity;)V

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/BdActionBar;->setLeftZoneOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/baidu/paysdk/ui/WebViewActivity$4;

    invoke-direct {v1, p0}, Lcom/baidu/paysdk/ui/WebViewActivity$4;-><init>(Lcom/baidu/paysdk/ui/WebViewActivity;)V

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/BdActionBar;->setRightLogoutOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3a
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/baidu/paysdk/ui/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/baidu/paysdk/ui/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    :goto_11
    return-void

    :cond_12
    invoke-super {p0}, Lcom/baidu/wallet/core/BaseActivity;->onBackPressed()V

    goto :goto_11
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/baidu/wallet/core/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/WebViewActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ebpay_layout_webview"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->layout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/WebViewActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v0, ""

    const-string v1, ""

    if-eqz v3, :cond_164

    const-string v0, "webview_title"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_156

    const-string v0, "webview_title_string"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_32
    const-string v1, "jump_url"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bank_type"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "channel_discount_params"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_160

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_67

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "?bank_type="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_67
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_84

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_84
    sget-object v2, Lcom/baidu/paysdk/ui/WebViewActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "url1111="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9c
    move-object v2, v0

    :goto_9d
    invoke-static {p0}, Lcom/baidu/wallet/core/utils/PhoneUtils;->getUA(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_eb

    const-string v4, "?"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_169

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&ua="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_c6
    if-eqz v3, :cond_eb

    const-string v0, "extra_param"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_eb

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_eb
    const/4 v0, -0x1

    const-string v3, ""

    invoke-static {p0, v0, v3}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/WebViewActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v3, "cust_webview"

    invoke-static {v0, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v3, Lcom/baidu/paysdk/ui/WebViewActivity$CustomWebViewClient;

    invoke-direct {v3, p0, v7}, Lcom/baidu/paysdk/ui/WebViewActivity$CustomWebViewClient;-><init>(Lcom/baidu/paysdk/ui/WebViewActivity;Lcom/baidu/paysdk/ui/WebViewActivity$1;)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_127

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/WebViewActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "ebpay_bd_my_wallet"

    invoke-static {v0, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v3, Lcom/baidu/paysdk/ui/WebViewActivity$CustomWebChromeClient;

    invoke-direct {v3, p0, v7}, Lcom/baidu/paysdk/ui/WebViewActivity$CustomWebChromeClient;-><init>(Lcom/baidu/paysdk/ui/WebViewActivity;Lcom/baidu/paysdk/ui/WebViewActivity$1;)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    :cond_127
    iget-object v0, p0, Lcom/baidu/paysdk/ui/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->clearCache(Z)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_14d

    iget-object v0, p0, Lcom/baidu/paysdk/ui/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    const-string v3, "searchBoxJavaBridge_"

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    :cond_14d
    iget-object v0, p0, Lcom/baidu/paysdk/ui/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/baidu/paysdk/ui/WebViewActivity;->initActionBar1(Ljava/lang/String;)V

    return-void

    :cond_156
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/WebViewActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_32

    :cond_160
    const-string v1, "http://co.baifubao.com/content/resource/HTML5/eptos.html"

    goto/16 :goto_9c

    :cond_164
    const-string v1, "http://co.baifubao.com/content/resource/HTML5/eptos.html"

    move-object v2, v0

    goto/16 :goto_9d

    :cond_169
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "?ua="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_c6
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Lcom/baidu/wallet/core/BaseActivity;->onPause()V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/WebViewActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "WebViewActivity"

    invoke-static {v0, v1}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onPause(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Lcom/baidu/wallet/core/BaseActivity;->onResume()V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/WebViewActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "WebViewActivity"

    invoke-static {v0, v1}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onResume(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
