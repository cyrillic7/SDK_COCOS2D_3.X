.class Lcom/tencent/tmgp/GameCatchFish$2$3;
.super Ljava/lang/Object;
.source "GameCatchFish.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/tencent/tmgp/GameCatchFish$2$3;->this$1:Lcom/tencent/tmgp/GameCatchFish$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/tmgp/GameCatchFish$2$3;->this$1:Lcom/tencent/tmgp/GameCatchFish$2;

    # getter for: Lcom/tencent/tmgp/GameCatchFish$2;->this$0:Lcom/tencent/tmgp/GameCatchFish;
    invoke-static {v0}, Lcom/tencent/tmgp/GameCatchFish$2;->access$0(Lcom/tencent/tmgp/GameCatchFish$2;)Lcom/tencent/tmgp/GameCatchFish;

    move-result-object v0

    iget v0, v0, Lcom/tencent/tmgp/GameCatchFish;->m_webType:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/tmgp/GameCatchFish$2$3;->this$1:Lcom/tencent/tmgp/GameCatchFish$2;

    # getter for: Lcom/tencent/tmgp/GameCatchFish$2;->this$0:Lcom/tencent/tmgp/GameCatchFish;
    invoke-static {v0}, Lcom/tencent/tmgp/GameCatchFish$2;->access$0(Lcom/tencent/tmgp/GameCatchFish$2;)Lcom/tencent/tmgp/GameCatchFish;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmgp/GameCatchFish;->removeWebView()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmgp/GameCatchFish$2$3;->this$1:Lcom/tencent/tmgp/GameCatchFish$2;

    # getter for: Lcom/tencent/tmgp/GameCatchFish$2;->this$0:Lcom/tencent/tmgp/GameCatchFish;
    invoke-static {v0}, Lcom/tencent/tmgp/GameCatchFish$2;->access$0(Lcom/tencent/tmgp/GameCatchFish$2;)Lcom/tencent/tmgp/GameCatchFish;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tmgp/GameCatchFish;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tmgp/GameCatchFish$2$3;->this$1:Lcom/tencent/tmgp/GameCatchFish$2;

    # getter for: Lcom/tencent/tmgp/GameCatchFish$2;->this$0:Lcom/tencent/tmgp/GameCatchFish;
    invoke-static {v0}, Lcom/tencent/tmgp/GameCatchFish$2;->access$0(Lcom/tencent/tmgp/GameCatchFish$2;)Lcom/tencent/tmgp/GameCatchFish;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tmgp/GameCatchFish;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/tmgp/GameCatchFish$2$3;->this$1:Lcom/tencent/tmgp/GameCatchFish$2;

    # getter for: Lcom/tencent/tmgp/GameCatchFish$2;->this$0:Lcom/tencent/tmgp/GameCatchFish;
    invoke-static {v0}, Lcom/tencent/tmgp/GameCatchFish$2;->access$0(Lcom/tencent/tmgp/GameCatchFish$2;)Lcom/tencent/tmgp/GameCatchFish;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmgp/GameCatchFish;->removeWebView()V

    goto :goto_0
.end method
