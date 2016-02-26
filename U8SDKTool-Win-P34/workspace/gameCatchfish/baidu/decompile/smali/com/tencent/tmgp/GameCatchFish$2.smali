.class Lcom/tencent/tmgp/GameCatchFish$2;
.super Ljava/lang/Object;
.source "GameCatchFish.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tmgp/GameCatchFish;->openWebview(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/tmgp/GameCatchFish;

.field private final synthetic val$url:Ljava/lang/String;

.field private final synthetic val$webType:I


# direct methods
.method constructor <init>(Lcom/tencent/tmgp/GameCatchFish;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tmgp/GameCatchFish$2;->this$0:Lcom/tencent/tmgp/GameCatchFish;

    iput p2, p0, Lcom/tencent/tmgp/GameCatchFish$2;->val$webType:I

    iput-object p3, p0, Lcom/tencent/tmgp/GameCatchFish$2;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/tencent/tmgp/GameCatchFish$2;)Lcom/tencent/tmgp/GameCatchFish;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmgp/GameCatchFish$2;->this$0:Lcom/tencent/tmgp/GameCatchFish;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    sget-object v2, Lcom/tencent/tmgp/GameCatchFish;->app:Lcom/tencent/tmgp/GameCatchFish;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030004

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tmgp/GameCatchFish$2;->this$0:Lcom/tencent/tmgp/GameCatchFish;

    iget-object v2, v2, Lcom/tencent/tmgp/GameCatchFish;->m_webLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v2, Lcom/tencent/tmgp/GameCatchFish$2$1;

    invoke-direct {v2, p0}, Lcom/tencent/tmgp/GameCatchFish$2$1;-><init>(Lcom/tencent/tmgp/GameCatchFish$2;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/tencent/tmgp/GameCatchFish$2;->this$0:Lcom/tencent/tmgp/GameCatchFish;

    iget v3, p0, Lcom/tencent/tmgp/GameCatchFish$2;->val$webType:I

    iput v3, v2, Lcom/tencent/tmgp/GameCatchFish;->m_webType:I

    iget-object v3, p0, Lcom/tencent/tmgp/GameCatchFish$2;->this$0:Lcom/tencent/tmgp/GameCatchFish;

    const v2, 0x7f060008

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, v3, Lcom/tencent/tmgp/GameCatchFish;->m_webView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/tencent/tmgp/GameCatchFish$2;->this$0:Lcom/tencent/tmgp/GameCatchFish;

    iget-object v2, v2, Lcom/tencent/tmgp/GameCatchFish;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v2, v5}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    iget-object v2, p0, Lcom/tencent/tmgp/GameCatchFish$2;->this$0:Lcom/tencent/tmgp/GameCatchFish;

    iget-object v2, v2, Lcom/tencent/tmgp/GameCatchFish;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v2, v5}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v2, p0, Lcom/tencent/tmgp/GameCatchFish$2;->this$0:Lcom/tencent/tmgp/GameCatchFish;

    iget-object v2, v2, Lcom/tencent/tmgp/GameCatchFish;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v2, p0, Lcom/tencent/tmgp/GameCatchFish$2;->this$0:Lcom/tencent/tmgp/GameCatchFish;

    iget-object v2, v2, Lcom/tencent/tmgp/GameCatchFish;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    iget-object v2, p0, Lcom/tencent/tmgp/GameCatchFish$2;->this$0:Lcom/tencent/tmgp/GameCatchFish;

    iget-object v2, v2, Lcom/tencent/tmgp/GameCatchFish;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    iget-object v2, p0, Lcom/tencent/tmgp/GameCatchFish$2;->this$0:Lcom/tencent/tmgp/GameCatchFish;

    iget-object v2, v2, Lcom/tencent/tmgp/GameCatchFish;->m_webView:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/tencent/tmgp/GameCatchFish$2;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/tmgp/GameCatchFish$2;->this$0:Lcom/tencent/tmgp/GameCatchFish;

    iget-object v2, v2, Lcom/tencent/tmgp/GameCatchFish;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->requestFocus()Z

    iget-object v2, p0, Lcom/tencent/tmgp/GameCatchFish$2;->this$0:Lcom/tencent/tmgp/GameCatchFish;

    iget-object v2, v2, Lcom/tencent/tmgp/GameCatchFish;->m_webView:Landroid/webkit/WebView;

    new-instance v3, Lcom/tencent/tmgp/GameCatchFish$2$2;

    invoke-direct {v3, p0}, Lcom/tencent/tmgp/GameCatchFish$2$2;-><init>(Lcom/tencent/tmgp/GameCatchFish$2;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v3, p0, Lcom/tencent/tmgp/GameCatchFish$2;->this$0:Lcom/tencent/tmgp/GameCatchFish;

    const v2, 0x7f060007

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v3, Lcom/tencent/tmgp/GameCatchFish;->m_topLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/tencent/tmgp/GameCatchFish$2;->this$0:Lcom/tencent/tmgp/GameCatchFish;

    const v2, 0x7f060009

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, v3, Lcom/tencent/tmgp/GameCatchFish;->m_backButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/tencent/tmgp/GameCatchFish$2;->this$0:Lcom/tencent/tmgp/GameCatchFish;

    iget-object v2, v2, Lcom/tencent/tmgp/GameCatchFish;->m_backButton:Landroid/widget/Button;

    new-instance v3, Lcom/tencent/tmgp/GameCatchFish$2$3;

    invoke-direct {v3, p0}, Lcom/tencent/tmgp/GameCatchFish$2$3;-><init>(Lcom/tencent/tmgp/GameCatchFish$2;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
