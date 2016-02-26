.class Lcom/baidu/paysdk/login/LoginActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/baidu/paysdk/login/LoginActivity;


# direct methods
.method constructor <init>(Lcom/baidu/paysdk/login/LoginActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/login/LoginActivity$1;->this$0:Lcom/baidu/paysdk/login/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/baidu/paysdk/login/LoginActivity$1;->this$0:Lcom/baidu/paysdk/login/LoginActivity;

    # getter for: Lcom/baidu/paysdk/login/LoginActivity;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/baidu/paysdk/login/LoginActivity;->access$000(Lcom/baidu/paysdk/login/LoginActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/baidu/paysdk/login/LoginActivity$1;->this$0:Lcom/baidu/paysdk/login/LoginActivity;

    # getter for: Lcom/baidu/paysdk/login/LoginActivity;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/baidu/paysdk/login/LoginActivity;->access$000(Lcom/baidu/paysdk/login/LoginActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    :goto_15
    return-void

    :cond_16
    sget-object v0, Lcom/baidu/paysdk/login/LoginActivity;->litenter:Lcom/baidu/wallet/api/ILoginBackListener;

    if-eqz v0, :cond_21

    sget-object v0, Lcom/baidu/paysdk/login/LoginActivity;->litenter:Lcom/baidu/wallet/api/ILoginBackListener;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/baidu/wallet/api/ILoginBackListener;->onFail(ILjava/lang/String;)V

    :cond_21
    iget-object v0, p0, Lcom/baidu/paysdk/login/LoginActivity$1;->this$0:Lcom/baidu/paysdk/login/LoginActivity;

    invoke-virtual {v0}, Lcom/baidu/paysdk/login/LoginActivity;->finish()V

    goto :goto_15
.end method
