.class Lcom/baidu/paysdk/ui/WebViewActivity$CustomWebChromeClient;
.super Landroid/webkit/WebChromeClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/paysdk/ui/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomWebChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/paysdk/ui/WebViewActivity;


# direct methods
.method private constructor <init>(Lcom/baidu/paysdk/ui/WebViewActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/ui/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/baidu/paysdk/ui/WebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/paysdk/ui/WebViewActivity;Lcom/baidu/paysdk/ui/WebViewActivity$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/baidu/paysdk/ui/WebViewActivity$CustomWebChromeClient;-><init>(Lcom/baidu/paysdk/ui/WebViewActivity;)V

    return-void
.end method


# virtual methods
.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 6

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/baidu/paysdk/ui/WebViewActivity;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/baidu/paysdk/ui/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/baidu/paysdk/ui/WebViewActivity;

    invoke-virtual {v1}, Lcom/baidu/paysdk/ui/WebViewActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "ebpay_bd_my_wallet"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_17
    # invokes: Lcom/baidu/paysdk/ui/WebViewActivity;->initActionBar1(Ljava/lang/String;)V
    invoke-static {v0, p2}, Lcom/baidu/paysdk/ui/WebViewActivity;->access$200(Lcom/baidu/paysdk/ui/WebViewActivity;Ljava/lang/String;)V

    return-void
.end method
