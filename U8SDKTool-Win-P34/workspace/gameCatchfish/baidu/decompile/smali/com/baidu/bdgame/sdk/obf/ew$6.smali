.class final Lcom/baidu/bdgame/sdk/obf/ew$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ew;->a(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ew;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ew;)V
    .registers 2

    .prologue
    .line 117
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ew$6;->a:Lcom/baidu/bdgame/sdk/obf/ew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ew$6;->a:Lcom/baidu/bdgame/sdk/obf/ew;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ew$6;->a:Lcom/baidu/bdgame/sdk/obf/ew;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ew;->b(Lcom/baidu/bdgame/sdk/obf/ew;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ew;->a(Lcom/baidu/bdgame/sdk/obf/ew;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ew$6;->a:Lcom/baidu/bdgame/sdk/obf/ew;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ew;->e(Lcom/baidu/bdgame/sdk/obf/ew;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 123
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ew$6;->a:Lcom/baidu/bdgame/sdk/obf/ew;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ew;->k()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ew$6;->a:Lcom/baidu/bdgame/sdk/obf/ew;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ew;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_error_empty_verifycode"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ln;->a(Landroid/content/Context;I)V

    .line 124
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ew$6;->a:Lcom/baidu/bdgame/sdk/obf/ew;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ew;->b(Lcom/baidu/bdgame/sdk/obf/ew;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 137
    :cond_3d
    :goto_3d
    return-void

    .line 127
    :cond_3e
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ew$6;->a:Lcom/baidu/bdgame/sdk/obf/ew;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ew;->k()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ew$6;->a:Lcom/baidu/bdgame/sdk/obf/ew;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ew;->e(Lcom/baidu/bdgame/sdk/obf/ew;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/ew$6$1;

    invoke-direct {v2, p0}, Lcom/baidu/bdgame/sdk/obf/ew$6$1;-><init>(Lcom/baidu/bdgame/sdk/obf/ew$6;)V

    invoke-static {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/bl;->d(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)Z

    move-result v0

    .line 134
    if-eqz v0, :cond_3d

    .line 135
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ew$6;->a:Lcom/baidu/bdgame/sdk/obf/ew;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ew$6;->a:Lcom/baidu/bdgame/sdk/obf/ew;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ew;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_dialog_loading_verify"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ew;->c(I)V

    goto :goto_3d
.end method
