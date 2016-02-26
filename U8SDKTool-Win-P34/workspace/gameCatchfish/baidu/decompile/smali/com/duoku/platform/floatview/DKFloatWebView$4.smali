.class Lcom/duoku/platform/floatview/DKFloatWebView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/duoku/platform/floatview/DKFloatWebView$4;->a:Lcom/duoku/platform/floatview/DKFloatWebView;

    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 447
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView$4;->a:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWebView;->j(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 449
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView$4;->a:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWebView;->k(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 450
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView$4;->a:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v0, v2}, Lcom/duoku/platform/floatview/DKFloatWebView;->a(Lcom/duoku/platform/floatview/DKFloatWebView;Z)V

    .line 451
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView$4;->a:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWebView;->l(Lcom/duoku/platform/floatview/DKFloatWebView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 453
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView$4;->a:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWebView;->m(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWebView$4;->a:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWebView;->l(Lcom/duoku/platform/floatview/DKFloatWebView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 455
    :cond_31
    return-void
.end method
