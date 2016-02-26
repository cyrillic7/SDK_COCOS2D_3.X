.class Lcom/baidu/bdgame/sdk/obf/eh$b;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/eh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/eh;


# direct methods
.method private constructor <init>(Lcom/baidu/bdgame/sdk/obf/eh;)V
    .registers 2

    .prologue
    .line 163
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/eh$b;->a:Lcom/baidu/bdgame/sdk/obf/eh;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/bdgame/sdk/obf/eh;Lcom/baidu/bdgame/sdk/obf/eh$1;)V
    .registers 3

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/eh$b;-><init>(Lcom/baidu/bdgame/sdk/obf/eh;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .registers 8

    .prologue
    .line 194
    const-string v0, "BDP_91_SDK_ACTION="

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_74

    .line 195
    const-string v0, "BDP_91_SDK_ACTION="

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 196
    invoke-direct {p0, v2}, Lcom/baidu/bdgame/sdk/obf/eh$b;->b(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 197
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v3, "BDPPayResult"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 198
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    const-string v3, "Result"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 200
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "Message"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 203
    :try_start_3b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "interceptResult url:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/baidu/bdgame/sdk/obf/la;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 206
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/eh$b;->a:Lcom/baidu/bdgame/sdk/obf/eh;

    invoke-static {v2}, Lcom/baidu/bdgame/sdk/obf/eh;->d(Lcom/baidu/bdgame/sdk/obf/eh;)Lcom/baidu/bdgame/sdk/obf/ji;

    move-result-object v2

    if-eqz v2, :cond_72

    .line 207
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/eh$b;->a:Lcom/baidu/bdgame/sdk/obf/eh;

    invoke-static {v2}, Lcom/baidu/bdgame/sdk/obf/eh;->d(Lcom/baidu/bdgame/sdk/obf/eh;)Lcom/baidu/bdgame/sdk/obf/ji;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/baidu/bdgame/sdk/obf/ji;->a(ILjava/lang/String;)V
    :try_end_72
    .catch Ljava/lang/NumberFormatException; {:try_start_3b .. :try_end_72} :catch_76

    .line 212
    :cond_72
    :goto_72
    const/4 v0, 0x1

    .line 214
    :goto_73
    return v0

    :cond_74
    const/4 v0, 0x0

    goto :goto_73

    .line 209
    :catch_76
    move-exception v0

    goto :goto_72
.end method

.method private b(Ljava/lang/String;)Landroid/util/Pair;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 225
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 226
    const-string v2, "BDP_91_SDK_ACTION="

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v7, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 227
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 229
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v8}, Ljava/util/HashMap;-><init>(I)V

    .line 230
    array-length v0, v3

    if-lez v0, :cond_4d

    .line 231
    aget-object v2, v3, v7

    move v0, v1

    .line 232
    :goto_26
    array-length v5, v3

    if-ge v0, v5, :cond_46

    .line 233
    aget-object v5, v3, v0

    const-string v6, "="

    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 234
    array-length v6, v5

    if-ne v6, v8, :cond_43

    .line 235
    aget-object v6, v5, v7

    invoke-static {v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aget-object v5, v5, v1

    invoke-static {v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_46
    move-object v0, v2

    .line 241
    :goto_47
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 239
    :cond_4d
    const-string v0, ""

    goto :goto_47
.end method


# virtual methods
.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 180
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 181
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 186
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eh$b;->a:Lcom/baidu/bdgame/sdk/obf/eh;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/eh;->b(Lcom/baidu/bdgame/sdk/obf/eh;)Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->b()V

    .line 188
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eh$b;->a:Lcom/baidu/bdgame/sdk/obf/eh;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/eh;->c(Lcom/baidu/bdgame/sdk/obf/eh;)Landroid/webkit/WebView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eh$b;->a:Lcom/baidu/bdgame/sdk/obf/eh;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/eh;->c(Lcom/baidu/bdgame/sdk/obf/eh;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V

    .line 190
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eh$b;->a:Lcom/baidu/bdgame/sdk/obf/eh;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/eh;->c(Lcom/baidu/bdgame/sdk/obf/eh;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 175
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 176
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 166
    invoke-direct {p0, p2}, Lcom/baidu/bdgame/sdk/obf/eh$b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 167
    const/4 v0, 0x1

    .line 168
    :goto_7
    return v0

    :cond_8
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_7
.end method
