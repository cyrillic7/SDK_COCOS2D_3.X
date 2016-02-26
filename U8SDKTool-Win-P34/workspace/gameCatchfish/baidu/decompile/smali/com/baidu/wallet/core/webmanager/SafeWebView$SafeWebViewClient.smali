.class public Lcom/baidu/wallet/core/webmanager/SafeWebView$SafeWebViewClient;
.super Landroid/webkit/WebViewClient;

# interfaces
.implements Lcom/baidu/wallet/core/NoProguard;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/wallet/core/webmanager/SafeWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SafeWebViewClient"
.end annotation


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method private a(Landroid/webkit/WebView;)V
    .registers 3

    instance-of v0, p1, Lcom/baidu/wallet/core/webmanager/SafeWebView;

    if-eqz v0, :cond_9

    check-cast p1, Lcom/baidu/wallet/core/webmanager/SafeWebView;

    invoke-virtual {p1}, Lcom/baidu/wallet/core/webmanager/SafeWebView;->impactJavascriptInterfaces()V

    :cond_9
    return-void
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .registers 5

    iget-boolean v0, p0, Lcom/baidu/wallet/core/webmanager/SafeWebView$SafeWebViewClient;->a:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/wallet/core/webmanager/SafeWebView$SafeWebViewClient;->a:Z

    invoke-direct {p0, p1}, Lcom/baidu/wallet/core/webmanager/SafeWebView$SafeWebViewClient;->a(Landroid/webkit/WebView;)V

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/wallet/core/webmanager/SafeWebView$SafeWebViewClient;->a:Z

    goto :goto_4
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    iget-boolean v0, p0, Lcom/baidu/wallet/core/webmanager/SafeWebView$SafeWebViewClient;->a:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/wallet/core/webmanager/SafeWebView$SafeWebViewClient;->a:Z

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/wallet/core/webmanager/SafeWebView$SafeWebViewClient;->a:Z

    goto :goto_4
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/baidu/wallet/core/webmanager/SafeWebView$SafeWebViewClient;->a:Z

    if-eqz v0, :cond_6

    :goto_5
    return-void

    :cond_6
    iput-boolean v1, p0, Lcom/baidu/wallet/core/webmanager/SafeWebView$SafeWebViewClient;->a:Z

    invoke-direct {p0, p1}, Lcom/baidu/wallet/core/webmanager/SafeWebView$SafeWebViewClient;->a(Landroid/webkit/WebView;)V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/baidu/wallet/core/webmanager/SafeWebView$SafeWebViewClient;->a:Z

    goto :goto_5
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5

    iget-boolean v0, p0, Lcom/baidu/wallet/core/webmanager/SafeWebView$SafeWebViewClient;->a:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/wallet/core/webmanager/SafeWebView$SafeWebViewClient;->a:Z

    invoke-direct {p0, p1}, Lcom/baidu/wallet/core/webmanager/SafeWebView$SafeWebViewClient;->a(Landroid/webkit/WebView;)V

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/wallet/core/webmanager/SafeWebView$SafeWebViewClient;->a:Z

    goto :goto_4
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v1, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v0, v2, :cond_44

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v0, v2, :cond_44

    :try_start_d
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getAllowFileAccess()Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_14} :catch_3b

    move-result v0

    move v2, v0

    :goto_16
    if-nez p2, :cond_3f

    move-object v0, v1

    :goto_19
    if-eqz v0, :cond_44

    const-string v3, "file:///android_asset/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_44

    const-string v3, "file:///android_res/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_44

    if-nez v2, :cond_44

    const-string v2, "file://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    new-instance v0, Landroid/webkit/WebResourceResponse;

    invoke-direct {v0, v1, v1, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    :goto_3a
    return-object v0

    :catch_3b
    move-exception v0

    const/4 v0, 0x0

    move v2, v0

    goto :goto_16

    :cond_3f
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    :cond_44
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_3a
.end method
