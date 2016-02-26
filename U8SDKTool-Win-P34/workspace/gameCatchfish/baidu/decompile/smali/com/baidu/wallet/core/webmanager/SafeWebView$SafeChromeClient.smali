.class public Lcom/baidu/wallet/core/webmanager/SafeWebView$SafeChromeClient;
.super Landroid/webkit/WebChromeClient;

# interfaces
.implements Lcom/baidu/wallet/core/NoProguard;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/wallet/core/webmanager/SafeWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SafeChromeClient"
.end annotation


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

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
.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .registers 7

    instance-of v0, p1, Lcom/baidu/wallet/core/webmanager/SafeWebView;

    if-eqz v0, :cond_f

    move-object v0, p1

    check-cast v0, Lcom/baidu/wallet/core/webmanager/SafeWebView;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/baidu/wallet/core/webmanager/SafeWebView;->jsCallJava(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v0

    goto :goto_e
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 4

    const/16 v0, 0x19

    if-gt p2, v0, :cond_b

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/wallet/core/webmanager/SafeWebView$SafeChromeClient;->a:Z

    :cond_7
    :goto_7
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    return-void

    :cond_b
    iget-boolean v0, p0, Lcom/baidu/wallet/core/webmanager/SafeWebView$SafeChromeClient;->a:Z

    if-nez v0, :cond_7

    invoke-direct {p0, p1}, Lcom/baidu/wallet/core/webmanager/SafeWebView$SafeChromeClient;->a(Landroid/webkit/WebView;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/wallet/core/webmanager/SafeWebView$SafeChromeClient;->a:Z

    goto :goto_7
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    iget-boolean v0, p0, Lcom/baidu/wallet/core/webmanager/SafeWebView$SafeChromeClient;->a:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/wallet/core/webmanager/SafeWebView$SafeChromeClient;->a:Z

    invoke-direct {p0, p1}, Lcom/baidu/wallet/core/webmanager/SafeWebView$SafeChromeClient;->a(Landroid/webkit/WebView;)V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/wallet/core/webmanager/SafeWebView$SafeChromeClient;->a:Z

    goto :goto_4
.end method
