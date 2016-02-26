.class Lcom/tencent/tmgp/GameCatchFish$2$2;
.super Landroid/webkit/WebViewClient;
.source "GameCatchFish.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tmgp/GameCatchFish$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/tmgp/GameCatchFish$2;


# direct methods
.method constructor <init>(Lcom/tencent/tmgp/GameCatchFish$2;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tmgp/GameCatchFish$2$2;->this$1:Lcom/tencent/tmgp/GameCatchFish$2;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/webkit/WebView;
    .param p2    # Ljava/lang/String;

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmgp/GameCatchFish$2$2;->this$1:Lcom/tencent/tmgp/GameCatchFish$2;

    # getter for: Lcom/tencent/tmgp/GameCatchFish$2;->this$0:Lcom/tencent/tmgp/GameCatchFish;
    invoke-static {v0}, Lcom/tencent/tmgp/GameCatchFish$2;->access$0(Lcom/tencent/tmgp/GameCatchFish$2;)Lcom/tencent/tmgp/GameCatchFish;

    move-result-object v0

    # getter for: Lcom/tencent/tmgp/GameCatchFish;->gressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/tencent/tmgp/GameCatchFish;->access$2(Lcom/tencent/tmgp/GameCatchFish;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tmgp/GameCatchFish$2$2;->this$1:Lcom/tencent/tmgp/GameCatchFish$2;

    # getter for: Lcom/tencent/tmgp/GameCatchFish$2;->this$0:Lcom/tencent/tmgp/GameCatchFish;
    invoke-static {v0}, Lcom/tencent/tmgp/GameCatchFish$2;->access$0(Lcom/tencent/tmgp/GameCatchFish$2;)Lcom/tencent/tmgp/GameCatchFish;

    move-result-object v0

    # getter for: Lcom/tencent/tmgp/GameCatchFish;->gressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/tencent/tmgp/GameCatchFish;->access$2(Lcom/tencent/tmgp/GameCatchFish;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1    # Landroid/webkit/WebView;
    .param p2    # Ljava/lang/String;
    .param p3    # Landroid/graphics/Bitmap;

    const/4 v4, 0x1

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/tencent/tmgp/GameCatchFish$2$2;->this$1:Lcom/tencent/tmgp/GameCatchFish$2;

    # getter for: Lcom/tencent/tmgp/GameCatchFish$2;->this$0:Lcom/tencent/tmgp/GameCatchFish;
    invoke-static {v0}, Lcom/tencent/tmgp/GameCatchFish$2;->access$0(Lcom/tencent/tmgp/GameCatchFish$2;)Lcom/tencent/tmgp/GameCatchFish;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmgp/GameCatchFish$2$2;->this$1:Lcom/tencent/tmgp/GameCatchFish$2;

    # getter for: Lcom/tencent/tmgp/GameCatchFish$2;->this$0:Lcom/tencent/tmgp/GameCatchFish;
    invoke-static {v1}, Lcom/tencent/tmgp/GameCatchFish$2;->access$0(Lcom/tencent/tmgp/GameCatchFish$2;)Lcom/tencent/tmgp/GameCatchFish;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/tmgp/GameCatchFish;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd..."

    const-string v3, ""

    invoke-static {v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmgp/GameCatchFish;->access$1(Lcom/tencent/tmgp/GameCatchFish;Landroid/app/ProgressDialog;)V

    iget-object v0, p0, Lcom/tencent/tmgp/GameCatchFish$2$2;->this$1:Lcom/tencent/tmgp/GameCatchFish$2;

    # getter for: Lcom/tencent/tmgp/GameCatchFish$2;->this$0:Lcom/tencent/tmgp/GameCatchFish;
    invoke-static {v0}, Lcom/tencent/tmgp/GameCatchFish$2;->access$0(Lcom/tencent/tmgp/GameCatchFish$2;)Lcom/tencent/tmgp/GameCatchFish;

    move-result-object v0

    # getter for: Lcom/tencent/tmgp/GameCatchFish;->gressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/tencent/tmgp/GameCatchFish;->access$2(Lcom/tencent/tmgp/GameCatchFish;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 8
    .param p1    # Landroid/webkit/WebView;
    .param p2    # Ljava/lang/String;

    const/4 v7, 0x1

    const-string v4, "tel:"

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_1

    const-string v4, "url"

    invoke-static {v4, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const-string v2, ""

    invoke-static {p2}, Lcom/tencent/tmgp/CRequest;->URLRequest(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    const-string v4, "url"

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "Id"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Id"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "pwd"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tencent/tmgp/GameCatchFish$2$2;->this$1:Lcom/tencent/tmgp/GameCatchFish$2;

    # getter for: Lcom/tencent/tmgp/GameCatchFish$2;->this$0:Lcom/tencent/tmgp/GameCatchFish;
    invoke-static {v4}, Lcom/tencent/tmgp/GameCatchFish$2;->access$0(Lcom/tencent/tmgp/GameCatchFish$2;)Lcom/tencent/tmgp/GameCatchFish;

    move-result-object v4

    iget v4, v4, Lcom/tencent/tmgp/GameCatchFish;->m_webType:I

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_0

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "qq login"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v4, "Id"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "pwd"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    # invokes: Lcom/tencent/tmgp/GameCatchFish;->JniQQLogin(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v7, v4, v5}, Lcom/tencent/tmgp/GameCatchFish;->access$0(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v4, p0, Lcom/tencent/tmgp/GameCatchFish$2$2;->this$1:Lcom/tencent/tmgp/GameCatchFish$2;

    # getter for: Lcom/tencent/tmgp/GameCatchFish$2;->this$0:Lcom/tencent/tmgp/GameCatchFish;
    invoke-static {v4}, Lcom/tencent/tmgp/GameCatchFish$2;->access$0(Lcom/tencent/tmgp/GameCatchFish$2;)Lcom/tencent/tmgp/GameCatchFish;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/tmgp/GameCatchFish;->removeWebView()V

    :cond_1
    return v7

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "key:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",Value:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method
