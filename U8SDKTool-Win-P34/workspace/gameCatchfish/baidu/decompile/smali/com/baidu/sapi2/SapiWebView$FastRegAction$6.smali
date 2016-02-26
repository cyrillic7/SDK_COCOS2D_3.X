.class Lcom/baidu/sapi2/SapiWebView$FastRegAction$6;
.super Ljava/lang/Object;
.source "SapiWebView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/SapiWebView$FastRegAction;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/SapiWebView$FastRegAction;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/SapiWebView$FastRegAction;)V
    .registers 2

    .prologue
    .line 2429
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$6;->a:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2432
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2433
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$6;->a:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$6;->a:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    invoke-static {v2}, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->g(Lcom/baidu/sapi2/SapiWebView$FastRegAction;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$6;->a:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-virtual {v3}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/sapi2/utils/SapiUtils;->getFastRegChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/baidu/sapi2/utils/SapiUtils;->sendSms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 2434
    .local v0, "sendSuccess":Z
    if-eqz v0, :cond_40

    .line 2435
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$6;->a:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    invoke-static {v1}, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->d(Lcom/baidu/sapi2/SapiWebView$FastRegAction;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$6;->a:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    invoke-static {v2}, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->h(Lcom/baidu/sapi2/SapiWebView$FastRegAction;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x3a98

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2436
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$6;->a:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->b(Lcom/baidu/sapi2/SapiWebView$FastRegAction;Z)Z

    .line 2437
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$6;->a:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    invoke-static {v1}, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->i(Lcom/baidu/sapi2/SapiWebView$FastRegAction;)V

    .line 2441
    :goto_3f
    return-void

    .line 2439
    :cond_40
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$6;->a:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    invoke-static {v1}, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->j(Lcom/baidu/sapi2/SapiWebView$FastRegAction;)V

    goto :goto_3f
.end method
