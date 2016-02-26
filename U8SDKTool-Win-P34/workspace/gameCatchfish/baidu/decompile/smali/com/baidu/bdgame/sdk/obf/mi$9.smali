.class final Lcom/baidu/bdgame/sdk/obf/mi$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/mi;->a(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/mi;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/mi;)V
    .registers 2

    .prologue
    .line 158
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/mi$9;->a:Lcom/baidu/bdgame/sdk/obf/mi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mi$9;->a:Lcom/baidu/bdgame/sdk/obf/mi;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/mi;->a(Lcom/baidu/bdgame/sdk/obf/mi;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/mi$9;->a:Lcom/baidu/bdgame/sdk/obf/mi;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/mi;->d(Lcom/baidu/bdgame/sdk/obf/mi;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 165
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mi$9;->a:Lcom/baidu/bdgame/sdk/obf/mi;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/mi;->k()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/mi$9;->a:Lcom/baidu/bdgame/sdk/obf/mi;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/mi;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_error_same_password"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ln;->a(Landroid/content/Context;I)V

    .line 180
    :goto_37
    return-void

    .line 168
    :cond_38
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/mi$9;->a:Lcom/baidu/bdgame/sdk/obf/mi;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/mi;->k()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/baidu/bdgame/sdk/obf/mi$9$1;

    invoke-direct {v3, p0}, Lcom/baidu/bdgame/sdk/obf/mi$9$1;-><init>(Lcom/baidu/bdgame/sdk/obf/mi$9;)V

    invoke-static {v2, v0, v1, v3}, Lcom/baidu/bdgame/sdk/obf/bl;->j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)Z

    move-result v0

    .line 175
    if-eqz v0, :cond_5b

    .line 176
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mi$9;->a:Lcom/baidu/bdgame/sdk/obf/mi;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/mi$9;->a:Lcom/baidu/bdgame/sdk/obf/mi;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/mi;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_dialog_loading_pwd_modify"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/mi;->c(I)V

    goto :goto_37

    .line 178
    :cond_5b
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mi$9;->a:Lcom/baidu/bdgame/sdk/obf/mi;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/mi;->k()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/mi$9;->a:Lcom/baidu/bdgame/sdk/obf/mi;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/mi;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_error_token_invalid"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ln;->a(Landroid/content/Context;I)V

    goto :goto_37
.end method
