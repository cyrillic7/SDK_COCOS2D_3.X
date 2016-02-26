.class final Lcom/baidu/bdgame/sdk/obf/jo$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 194
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/jo$6;->a:Lcom/baidu/bdgame/sdk/obf/jo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jo$6;->a:Lcom/baidu/bdgame/sdk/obf/jo;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jo;->i(Lcom/baidu/bdgame/sdk/obf/jo;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 199
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jo$6;->a:Lcom/baidu/bdgame/sdk/obf/jo;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jo;->h(Lcom/baidu/bdgame/sdk/obf/jo;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 203
    :goto_11
    return-void

    .line 201
    :cond_12
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jo$6;->a:Lcom/baidu/bdgame/sdk/obf/jo;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jo;->h(Lcom/baidu/bdgame/sdk/obf/jo;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    goto :goto_11
.end method
