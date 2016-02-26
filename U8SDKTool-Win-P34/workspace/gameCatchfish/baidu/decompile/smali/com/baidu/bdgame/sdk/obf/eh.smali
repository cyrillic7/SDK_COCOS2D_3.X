.class public Lcom/baidu/bdgame/sdk/obf/eh;
.super Lcom/baidu/bdgame/sdk/obf/cd;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/eh$b;,
        Lcom/baidu/bdgame/sdk/obf/eh$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x3e8

.field private static final d:Ljava/lang/String; = "BDP_91_SDK_ACTION="

.field private static final e:Ljava/lang/String; = "BDPPayResult"

.field private static final f:Ljava/lang/String; = "Result"

.field private static final g:Ljava/lang/String; = "Message"


# instance fields
.field private h:Landroid/webkit/WebView;

.field private i:Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;

.field private j:Ljava/lang/String;

.field private k:Lcom/baidu/bdgame/sdk/obf/ji;

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/ce;)V
    .registers 2

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/cd;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;)V

    .line 61
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/eh;)V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/eh;->g()V

    return-void
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/eh;)Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eh;->i:Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;

    return-object v0
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/eh;)Landroid/webkit/WebView;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eh;->h:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic d(Lcom/baidu/bdgame/sdk/obf/eh;)Lcom/baidu/bdgame/sdk/obf/ji;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eh;->k:Lcom/baidu/bdgame/sdk/obf/ji;

    return-object v0
.end method

.method private f()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 92
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eh;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 93
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eh;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 94
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eh;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 95
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eh;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$TextSize;->SMALLER:Landroid/webkit/WebSettings$TextSize;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    .line 96
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eh;->h:Landroid/webkit/WebView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/eh$2;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/eh$2;-><init>(Lcom/baidu/bdgame/sdk/obf/eh;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 106
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eh;->h:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 107
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eh;->h:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 108
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eh;->h:Landroid/webkit/WebView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/eh$a;

    invoke-direct {v1, p0, v3}, Lcom/baidu/bdgame/sdk/obf/eh$a;-><init>(Lcom/baidu/bdgame/sdk/obf/eh;Lcom/baidu/bdgame/sdk/obf/eh$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 109
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eh;->h:Landroid/webkit/WebView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/eh$b;

    invoke-direct {v1, p0, v3}, Lcom/baidu/bdgame/sdk/obf/eh$b;-><init>(Lcom/baidu/bdgame/sdk/obf/eh;Lcom/baidu/bdgame/sdk/obf/eh$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 110
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eh;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 111
    return-void
.end method

.method private g()V
    .registers 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eh;->j:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/eh;->b(Ljava/lang/String;)V

    .line 259
    return-void
.end method


# virtual methods
.method protected a(Landroid/app/Activity;)Landroid/view/View;
    .registers 5

    .prologue
    .line 65
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 66
    const-string v1, "bdp_paycenter_layout_webpay"

    invoke-static {p1, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 68
    const-string v0, "bdp_paycenter_layout_web"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eh;->h:Landroid/webkit/WebView;

    .line 70
    const-string v0, "bdp_paycenter_loading_bar"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eh;->i:Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;

    .line 72
    return-object v1
.end method

.method protected a(Landroid/app/Activity;Landroid/view/View;)V
    .registers 5

    .prologue
    .line 77
    invoke-super {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/cd;->a(Landroid/app/Activity;Landroid/view/View;)V

    .line 78
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/eh;->f()V

    .line 79
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eh;->i:Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/eh$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/eh$1;-><init>(Lcom/baidu/bdgame/sdk/obf/eh;)V

    invoke-virtual {v0, v1}, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->a(Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView$b;)V

    .line 88
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eh;->l:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/eh;->b(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/ji;)V
    .registers 2

    .prologue
    .line 264
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/eh;->k:Lcom/baidu/bdgame/sdk/obf/ji;

    .line 265
    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/eh;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadWebUrl :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/la;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/eh;->h:Landroid/webkit/WebView;

    if-eqz v1, :cond_31

    .line 252
    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eh;->j:Ljava/lang/String;

    .line 253
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/eh;->h:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 255
    :cond_31
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 278
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/eh;->l:Ljava/lang/String;

    .line 279
    return-void
.end method

.method public d()Z
    .registers 5

    .prologue
    .line 269
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eh;->k:Lcom/baidu/bdgame/sdk/obf/ji;

    if-eqz v0, :cond_15

    .line 270
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eh;->k:Lcom/baidu/bdgame/sdk/obf/ji;

    const/16 v1, 0x3e8

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/eh;->k()Landroid/content/Context;

    move-result-object v2

    const-string v3, "bdp_passport_pay_cancel"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/ji;->a(ILjava/lang/String;)V

    .line 272
    :cond_15
    const/4 v0, 0x1

    return v0
.end method
