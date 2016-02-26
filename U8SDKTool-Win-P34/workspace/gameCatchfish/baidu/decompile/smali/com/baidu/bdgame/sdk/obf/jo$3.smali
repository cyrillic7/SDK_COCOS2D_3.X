.class final Lcom/baidu/bdgame/sdk/obf/jo$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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
    .line 133
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/jo$3;->a:Lcom/baidu/bdgame/sdk/obf/jo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 5

    .prologue
    .line 137
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jo$3;->a:Lcom/baidu/bdgame/sdk/obf/jo;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jo;->g(Lcom/baidu/bdgame/sdk/obf/jo;)I

    move-result v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jo$3;->a:Lcom/baidu/bdgame/sdk/obf/jo;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/jo;->h(Lcom/baidu/bdgame/sdk/obf/jo;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_31

    .line 138
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jo$3;->a:Lcom/baidu/bdgame/sdk/obf/jo;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jo$3;->a:Lcom/baidu/bdgame/sdk/obf/jo;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/jo;->h(Lcom/baidu/bdgame/sdk/obf/jo;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/jo;->a(Lcom/baidu/bdgame/sdk/obf/jo;I)I

    .line 139
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jo$3;->a:Lcom/baidu/bdgame/sdk/obf/jo;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jo;->h(Lcom/baidu/bdgame/sdk/obf/jo;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/jo$3$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/jo$3$1;-><init>(Lcom/baidu/bdgame/sdk/obf/jo$3;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 147
    :cond_31
    return-void
.end method
