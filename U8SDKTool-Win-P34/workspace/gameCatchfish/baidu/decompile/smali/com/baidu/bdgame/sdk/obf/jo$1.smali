.class final Lcom/baidu/bdgame/sdk/obf/jo$1;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/jo;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/jo;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/jo;)V
    .registers 2

    .prologue
    .line 78
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/jo$1;->a:Lcom/baidu/bdgame/sdk/obf/jo;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jo$1;->a:Lcom/baidu/bdgame/sdk/obf/jo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/jo;->a(Lcom/baidu/bdgame/sdk/obf/jo;Z)Z

    .line 109
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jo$1;->a:Lcom/baidu/bdgame/sdk/obf/jo;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jo;->a(Lcom/baidu/bdgame/sdk/obf/jo;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jo$1;->a:Lcom/baidu/bdgame/sdk/obf/jo;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/jo;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_web_menu_bbs_5"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 110
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jo$1;->a:Lcom/baidu/bdgame/sdk/obf/jo;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jo;->b(Lcom/baidu/bdgame/sdk/obf/jo;)V

    .line 111
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jo$1;->a:Lcom/baidu/bdgame/sdk/obf/jo;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jo;->d(Lcom/baidu/bdgame/sdk/obf/jo;)V

    .line 112
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jo$1;->a:Lcom/baidu/bdgame/sdk/obf/jo;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/jo;->a(Lcom/baidu/bdgame/sdk/obf/jo;Z)Z

    .line 100
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jo$1;->a:Lcom/baidu/bdgame/sdk/obf/jo;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jo;->a(Lcom/baidu/bdgame/sdk/obf/jo;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jo$1;->a:Lcom/baidu/bdgame/sdk/obf/jo;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/jo;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_web_menu_bbs_4"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jo$1;->a:Lcom/baidu/bdgame/sdk/obf/jo;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jo;->b(Lcom/baidu/bdgame/sdk/obf/jo;)V

    .line 102
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jo$1;->a:Lcom/baidu/bdgame/sdk/obf/jo;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jo;->c(Lcom/baidu/bdgame/sdk/obf/jo;)V

    .line 103
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 104
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    .line 82
    if-eqz p2, :cond_1c

    const-string v1, "sms:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 83
    const-string v1, "sms:"

    const-string v2, ""

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 84
    const-string v2, ""

    .line 85
    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/jo$1;->a:Lcom/baidu/bdgame/sdk/obf/jo;

    invoke-static {v3, v1, v2}, Lcom/baidu/bdgame/sdk/obf/jo;->a(Lcom/baidu/bdgame/sdk/obf/jo;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_1b
    :goto_1b
    return v0

    .line 87
    :cond_1c
    if-eqz p2, :cond_3b

    const-string v1, "wtai://wp/mc"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 88
    const-string v1, ";"

    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 89
    array-length v2, v1

    if-lt v2, v3, :cond_1b

    .line 90
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/jo$1;->a:Lcom/baidu/bdgame/sdk/obf/jo;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/jo;->getContext()Landroid/content/Context;

    move-result-object v2

    aget-object v1, v1, v0

    invoke-static {v2, v1}, Lcom/baidu/bdgame/sdk/obf/lf;->a(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_1b

    .line 94
    :cond_3b
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1b
.end method
