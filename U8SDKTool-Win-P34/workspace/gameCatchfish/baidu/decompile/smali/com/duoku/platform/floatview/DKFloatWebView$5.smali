.class Lcom/duoku/platform/floatview/DKFloatWebView$5;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/floatview/DKFloatWebView;->a(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/floatview/DKFloatWebView;


# direct methods
.method constructor <init>(Lcom/duoku/platform/floatview/DKFloatWebView;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/floatview/DKFloatWebView$5;->a:Lcom/duoku/platform/floatview/DKFloatWebView;

    .line 487
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 6

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 502
    const/16 v0, 0x64

    if-ne p2, v0, :cond_4a

    .line 504
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView$5;->a:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWebView;->m(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView$5;->a:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWebView;->m(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView$5;->a:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWebView;->n(Lcom/duoku/platform/floatview/DKFloatWebView;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 506
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView$5;->a:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWebView;->m(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 508
    :cond_2c
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView$5;->a:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWebView;->k(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView$5;->a:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWebView;->k(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_49

    .line 510
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView$5;->a:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWebView;->k(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 525
    :cond_49
    :goto_49
    return-void

    .line 515
    :cond_4a
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView$5;->a:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWebView;->k(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView$5;->a:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWebView;->k(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_49

    .line 517
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView$5;->a:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWebView;->k(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_49
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 493
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 494
    if-eqz p2, :cond_e

    .line 496
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView$5;->a:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWebView;->i(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    :cond_e
    return-void
.end method
