.class final Lcom/baidu/bdgame/sdk/obf/ep$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ep;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ep;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ep;)V
    .registers 2

    .prologue
    .line 115
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ep$1;->a:Lcom/baidu/bdgame/sdk/obf/ep;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep$1;->a:Lcom/baidu/bdgame/sdk/obf/ep;

    invoke-static {v0, p1}, Lcom/baidu/bdgame/sdk/obf/ep;->a(Lcom/baidu/bdgame/sdk/obf/ep;Landroid/view/View;)V

    .line 120
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep$1;->a:Lcom/baidu/bdgame/sdk/obf/ep;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ep;->a(Lcom/baidu/bdgame/sdk/obf/ep;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ep$1;->a:Lcom/baidu/bdgame/sdk/obf/ep;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ep;->b(Lcom/baidu/bdgame/sdk/obf/ep;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 123
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ep$1;->a:Lcom/baidu/bdgame/sdk/obf/ep;

    invoke-static {v2, v0}, Lcom/baidu/bdgame/sdk/obf/ep;->a(Lcom/baidu/bdgame/sdk/obf/ep;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4e

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ep$1;->a:Lcom/baidu/bdgame/sdk/obf/ep;

    invoke-static {v2, v1}, Lcom/baidu/bdgame/sdk/obf/ep;->b(Lcom/baidu/bdgame/sdk/obf/ep;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 125
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ep$1;->a:Lcom/baidu/bdgame/sdk/obf/ep;

    invoke-static {v2}, Lcom/baidu/bdgame/sdk/obf/ep;->e(Lcom/baidu/bdgame/sdk/obf/ep;)Lcom/baidu/bdgame/sdk/obf/eq;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/ep$1;->a:Lcom/baidu/bdgame/sdk/obf/ep;

    invoke-static {v3}, Lcom/baidu/bdgame/sdk/obf/ep;->c(Lcom/baidu/bdgame/sdk/obf/ep;)I

    move-result v3

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/ep$1;->a:Lcom/baidu/bdgame/sdk/obf/ep;

    invoke-static {v4}, Lcom/baidu/bdgame/sdk/obf/ep;->d(Lcom/baidu/bdgame/sdk/obf/ep;)I

    move-result v4

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/baidu/bdgame/sdk/obf/eq;->a(IILjava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_4e
    return-void
.end method
