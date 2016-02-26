.class Lcom/baidu/bdgame/sdk/obf/eh$a;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/eh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/eh;


# direct methods
.method private constructor <init>(Lcom/baidu/bdgame/sdk/obf/eh;)V
    .registers 2

    .prologue
    .line 113
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/eh$a;->a:Lcom/baidu/bdgame/sdk/obf/eh;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/bdgame/sdk/obf/eh;Lcom/baidu/bdgame/sdk/obf/eh$1;)V
    .registers 3

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/eh$a;-><init>(Lcom/baidu/bdgame/sdk/obf/eh;)V

    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 117
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    return v0
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 136
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    return v0
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .registers 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/webkit/JsPromptResult;

    .prologue
    .line 142
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v0

    return v0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    const/16 v1, 0x64

    .line 122
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eh$a;->a:Lcom/baidu/bdgame/sdk/obf/eh;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/eh;->b(Lcom/baidu/bdgame/sdk/obf/eh;)Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->d()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 131
    :cond_e
    :goto_e
    return-void

    .line 125
    :cond_f
    if-lez p2, :cond_1d

    if-ge p2, v1, :cond_1d

    .line 126
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eh$a;->a:Lcom/baidu/bdgame/sdk/obf/eh;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/eh;->b(Lcom/baidu/bdgame/sdk/obf/eh;)Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->a()V

    goto :goto_e

    .line 127
    :cond_1d
    if-ne p2, v1, :cond_e

    .line 128
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eh$a;->a:Lcom/baidu/bdgame/sdk/obf/eh;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/eh;->b(Lcom/baidu/bdgame/sdk/obf/eh;)Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->c()V

    .line 129
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eh$a;->a:Lcom/baidu/bdgame/sdk/obf/eh;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/eh;->c(Lcom/baidu/bdgame/sdk/obf/eh;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    goto :goto_e
.end method

.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 147
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    .line 148
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 152
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "precomposed"    # Z

    .prologue
    .line 158
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 159
    return-void
.end method
