.class Lcom/baidu/paysdk/login/LoginActivity$CustWebChromeClient;
.super Landroid/webkit/WebChromeClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/paysdk/login/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustWebChromeClient"
.end annotation


# static fields
.field private static final MAX_PROCESS:I = 0x3c


# instance fields
.field final synthetic this$0:Lcom/baidu/paysdk/login/LoginActivity;


# direct methods
.method private constructor <init>(Lcom/baidu/paysdk/login/LoginActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/login/LoginActivity$CustWebChromeClient;->this$0:Lcom/baidu/paysdk/login/LoginActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/paysdk/login/LoginActivity;Lcom/baidu/paysdk/login/LoginActivity$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/baidu/paysdk/login/LoginActivity$CustWebChromeClient;-><init>(Lcom/baidu/paysdk/login/LoginActivity;)V

    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    return v0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/baidu/paysdk/login/LoginActivity$CustWebChromeClient;->this$0:Lcom/baidu/paysdk/login/LoginActivity;

    # getter for: Lcom/baidu/paysdk/login/LoginActivity;->mTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/baidu/paysdk/login/LoginActivity;->access$800(Lcom/baidu/paysdk/login/LoginActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_12
    return-void
.end method
