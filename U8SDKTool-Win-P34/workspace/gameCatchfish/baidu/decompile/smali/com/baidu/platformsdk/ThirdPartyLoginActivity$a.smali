.class Lcom/baidu/platformsdk/ThirdPartyLoginActivity$a;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/platformsdk/ThirdPartyLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/platformsdk/ThirdPartyLoginActivity;


# direct methods
.method private constructor <init>(Lcom/baidu/platformsdk/ThirdPartyLoginActivity;)V
    .registers 2

    .prologue
    .line 118
    iput-object p1, p0, Lcom/baidu/platformsdk/ThirdPartyLoginActivity$a;->a:Lcom/baidu/platformsdk/ThirdPartyLoginActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/platformsdk/ThirdPartyLoginActivity;Lcom/baidu/platformsdk/ThirdPartyLoginActivity$1;)V
    .registers 3

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/baidu/platformsdk/ThirdPartyLoginActivity$a;-><init>(Lcom/baidu/platformsdk/ThirdPartyLoginActivity;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .registers 6

    .prologue
    .line 155
    iget-object v0, p0, Lcom/baidu/platformsdk/ThirdPartyLoginActivity$a;->a:Lcom/baidu/platformsdk/ThirdPartyLoginActivity;

    invoke-static {v0}, Lcom/baidu/platformsdk/ThirdPartyLoginActivity;->c(Lcom/baidu/platformsdk/ThirdPartyLoginActivity;)Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/baidu/platformsdk/ThirdPartyLoginActivity$a;->a:Lcom/baidu/platformsdk/ThirdPartyLoginActivity;

    invoke-static {v0}, Lcom/baidu/platformsdk/ThirdPartyLoginActivity;->c(Lcom/baidu/platformsdk/ThirdPartyLoginActivity;)Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/at;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    :cond_18
    const-string v0, "oauth_verifier"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_28

    const-string v0, "access_token"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_69

    .line 158
    :cond_28
    iget-object v0, p0, Lcom/baidu/platformsdk/ThirdPartyLoginActivity$a;->a:Lcom/baidu/platformsdk/ThirdPartyLoginActivity;

    invoke-static {v0}, Lcom/baidu/platformsdk/ThirdPartyLoginActivity;->d(Lcom/baidu/platformsdk/ThirdPartyLoginActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/baidu/platformsdk/ThirdPartyLoginActivity$a;->a:Lcom/baidu/platformsdk/ThirdPartyLoginActivity;

    invoke-static {v0}, Lcom/baidu/platformsdk/ThirdPartyLoginActivity;->a(Lcom/baidu/platformsdk/ThirdPartyLoginActivity;)V

    .line 161
    :try_start_38
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_49

    const-string v0, ""

    .line 163
    :cond_49
    iget-object v1, p0, Lcom/baidu/platformsdk/ThirdPartyLoginActivity$a;->a:Lcom/baidu/platformsdk/ThirdPartyLoginActivity;

    iget-object v2, p0, Lcom/baidu/platformsdk/ThirdPartyLoginActivity$a;->a:Lcom/baidu/platformsdk/ThirdPartyLoginActivity;

    invoke-static {v2}, Lcom/baidu/platformsdk/ThirdPartyLoginActivity;->c(Lcom/baidu/platformsdk/ThirdPartyLoginActivity;)Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/at;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/baidu/platformsdk/ThirdPartyLoginActivity$a$1;

    invoke-direct {v3, p0}, Lcom/baidu/platformsdk/ThirdPartyLoginActivity$a$1;-><init>(Lcom/baidu/platformsdk/ThirdPartyLoginActivity$a;)V

    invoke-static {v1, v2, v0, v3}, Lcom/baidu/bdgame/sdk/obf/bl;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/bk;
    :try_end_5d
    .catch Ljava/net/MalformedURLException; {:try_start_38 .. :try_end_5d} :catch_5f

    .line 188
    :goto_5d
    const/4 v0, 0x1

    .line 191
    :goto_5e
    return v0

    .line 183
    :catch_5f
    move-exception v0

    .line 184
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 185
    iget-object v0, p0, Lcom/baidu/platformsdk/ThirdPartyLoginActivity$a;->a:Lcom/baidu/platformsdk/ThirdPartyLoginActivity;

    invoke-static {v0}, Lcom/baidu/platformsdk/ThirdPartyLoginActivity;->b(Lcom/baidu/platformsdk/ThirdPartyLoginActivity;)V

    goto :goto_5d

    .line 191
    :cond_69
    const/4 v0, 0x0

    goto :goto_5e
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/baidu/platformsdk/ThirdPartyLoginActivity$a;->a:Lcom/baidu/platformsdk/ThirdPartyLoginActivity;

    invoke-static {v0}, Lcom/baidu/platformsdk/ThirdPartyLoginActivity;->b(Lcom/baidu/platformsdk/ThirdPartyLoginActivity;)V

    .line 136
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/baidu/platformsdk/ThirdPartyLoginActivity$a;->a:Lcom/baidu/platformsdk/ThirdPartyLoginActivity;

    invoke-static {v0}, Lcom/baidu/platformsdk/ThirdPartyLoginActivity;->a(Lcom/baidu/platformsdk/ThirdPartyLoginActivity;)V

    .line 129
    invoke-direct {p0, p2}, Lcom/baidu/platformsdk/ThirdPartyLoginActivity$a;->a(Ljava/lang/String;)Z

    .line 130
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 131
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 123
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 124
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
