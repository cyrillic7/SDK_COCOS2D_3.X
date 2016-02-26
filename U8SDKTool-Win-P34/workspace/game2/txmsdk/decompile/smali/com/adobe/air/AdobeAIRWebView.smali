.class public Lcom/adobe/air/AdobeAIRWebView;
.super Ljava/lang/Object;
.source "AdobeAIRWebView.java"


# static fields
.field public static final ADOBE_GAME_SHOWCASE:Ljava/lang/String; = "gaming.adobe.com"

.field public static final ADOBE_HOST:Ljava/lang/String; = "www.adobe.com"

.field public static final CLOUDFRONT_HOST:Ljava/lang/String; = "dh8vjmvwgc27o.cloudfront.net"

.field public static final DYNAMIC_URL_CLOUDFRONT:Ljava/lang/String; = "https://www.adobe.com/airgames/4/"

.field public static final GAMESPACE_HOST:Ljava/lang/String; = "gamespace.adobe.com"

.field public static final GOOGLE_PLAY_HOST:Ljava/lang/String; = "play.google.com"

.field public static final STATIC_URL:Ljava/lang/String; = "file:///android_res/raw/startga.html"


# instance fields
.field private mAuxWebView:Landroid/webkit/WebView;

.field private mCurrentContext:Landroid/content/Context;

.field private mFirstLoad:Z

.field private mHiddenWebView:Landroid/webkit/WebView;

.field private mOffline:Z

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/AdobeAIRWebView;->mCurrentContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/adobe/air/AdobeAIRWebView;->mWebView:Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/adobe/air/AdobeAIRWebView;->mAuxWebView:Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/adobe/air/AdobeAIRWebView;->mHiddenWebView:Landroid/webkit/WebView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/air/AdobeAIRWebView;->mOffline:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/air/AdobeAIRWebView;->mFirstLoad:Z

    iput-object p1, p0, Lcom/adobe/air/AdobeAIRWebView;->mCurrentContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/air/AdobeAIRWebView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/AdobeAIRWebView;->mCurrentContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/air/AdobeAIRWebView;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/AdobeAIRWebView;->mAuxWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/adobe/air/AdobeAIRWebView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/adobe/air/AdobeAIRWebView;->mFirstLoad:Z

    return v0
.end method

.method static synthetic access$202(Lcom/adobe/air/AdobeAIRWebView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/adobe/air/AdobeAIRWebView;->mFirstLoad:Z

    return p1
.end method

.method static synthetic access$300(Lcom/adobe/air/AdobeAIRWebView;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/AdobeAIRWebView;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/adobe/air/AdobeAIRWebView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/adobe/air/AdobeAIRWebView;->mOffline:Z

    return p1
.end method


# virtual methods
.method public canGoBack()Z
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/AdobeAIRWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public copyBackForwardList()Landroid/webkit/WebBackForwardList;
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/AdobeAIRWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public create()V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Lcom/adobe/air/AdobeAIRWebView$1;

    invoke-direct {v0, p0}, Lcom/adobe/air/AdobeAIRWebView$1;-><init>(Lcom/adobe/air/AdobeAIRWebView;)V

    new-instance v1, Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/adobe/air/AdobeAIRWebView;->mCurrentContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/adobe/air/AdobeAIRWebView;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/adobe/air/AdobeAIRWebView;->mWebView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    iget-object v1, p0, Lcom/adobe/air/AdobeAIRWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/adobe/air/AdobeAIRWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/adobe/air/AdobeAIRWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    iget-object v0, p0, Lcom/adobe/air/AdobeAIRWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    iget-object v0, p0, Lcom/adobe/air/AdobeAIRWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    iget-object v0, p0, Lcom/adobe/air/AdobeAIRWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/adobe/air/AdobeAIRWebView;->mCurrentContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/databases/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/adobe/air/AdobeAIRWebView;->mCurrentContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/air/AdobeAIRWebView;->mAuxWebView:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/adobe/air/AdobeAIRWebView;->mAuxWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/adobe/air/AdobeAIRWebView;->mAuxWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    iget-object v0, p0, Lcom/adobe/air/AdobeAIRWebView;->mAuxWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    iget-object v0, p0, Lcom/adobe/air/AdobeAIRWebView;->mAuxWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/adobe/air/AdobeAIRWebView;->mCurrentContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/databases/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/adobe/air/AdobeAIRWebView;->createAnalyticsWebView()V

    return-void
.end method

.method public createAnalyticsWebView()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/adobe/air/AdobeAIRWebView;->mCurrentContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/air/AdobeAIRWebView;->mHiddenWebView:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/adobe/air/AdobeAIRWebView;->mHiddenWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/adobe/air/AdobeAIRWebView;->mHiddenWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    iget-object v0, p0, Lcom/adobe/air/AdobeAIRWebView;->mHiddenWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/AdobeAIRWebView;->mHiddenWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/adobe/air/AdobeAIRWebView;->mCurrentContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/databases/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/adobe/air/AdobeAIRWebView;->mHiddenWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/adobe/air/AdobeAIRWebView$2;

    invoke-direct {v1, p0}, Lcom/adobe/air/AdobeAIRWebView$2;-><init>(Lcom/adobe/air/AdobeAIRWebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/AdobeAIRWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public goBack()V
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/AdobeAIRWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    return-void
.end method

.method public isOffline()Z
    .locals 1

    iget-boolean v0, p0, Lcom/adobe/air/AdobeAIRWebView;->mOffline:Z

    return v0
.end method

.method public loadAnalyticsUrl(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/AdobeAIRWebView;->mHiddenWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/AdobeAIRWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public setOffline(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/adobe/air/AdobeAIRWebView;->mOffline:Z

    return-void
.end method
