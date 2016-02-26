.class final Lcom/baidu/bdgame/sdk/obf/mt$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/mt;->a(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/mt;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/mt;)V
    .registers 2

    .prologue
    .line 256
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/mt$12;->a:Lcom/baidu/bdgame/sdk/obf/mt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt$12;->a:Lcom/baidu/bdgame/sdk/obf/mt;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/mt;->a(Lcom/baidu/bdgame/sdk/obf/mt;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kx;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 261
    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/lf;->a(Ljava/lang/String;)Z

    move-result v1

    .line 262
    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kx;->c(Ljava/lang/String;)Z

    move-result v2

    .line 263
    if-nez v1, :cond_1e

    if-eqz v2, :cond_6b

    .line 265
    :cond_1e
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/mt$12;->a:Lcom/baidu/bdgame/sdk/obf/mt;

    invoke-static {v2}, Lcom/baidu/bdgame/sdk/obf/mt;->k(Lcom/baidu/bdgame/sdk/obf/mt;)Lcom/baidu/platformsdk/BDPlatformUser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/platformsdk/BDPlatformUser;->isGuest()Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 266
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/mt$12;->a:Lcom/baidu/bdgame/sdk/obf/mt;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/mt;->k()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/baidu/bdgame/sdk/obf/mt$12$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/baidu/bdgame/sdk/obf/mt$12$1;-><init>(Lcom/baidu/bdgame/sdk/obf/mt$12;ZLjava/lang/String;)V

    invoke-static {v2, v0, v3}, Lcom/baidu/bdgame/sdk/obf/bl;->e(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)Z

    move-result v0

    .line 283
    :goto_39
    if-eqz v0, :cond_5a

    .line 284
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt$12;->a:Lcom/baidu/bdgame/sdk/obf/mt;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/mt;->l(Lcom/baidu/bdgame/sdk/obf/mt;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 285
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt$12;->a:Lcom/baidu/bdgame/sdk/obf/mt;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/mt;->l(Lcom/baidu/bdgame/sdk/obf/mt;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/mt$12;->a:Lcom/baidu/bdgame/sdk/obf/mt;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/mt;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_visitor_bind_verifycode_getting"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 290
    :cond_5a
    :goto_5a
    return-void

    .line 274
    :cond_5b
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/mt$12;->a:Lcom/baidu/bdgame/sdk/obf/mt;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/mt;->k()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/baidu/bdgame/sdk/obf/mt$12$2;

    invoke-direct {v3, p0, v1, v0}, Lcom/baidu/bdgame/sdk/obf/mt$12$2;-><init>(Lcom/baidu/bdgame/sdk/obf/mt$12;ZLjava/lang/String;)V

    invoke-static {v2, v0, v3}, Lcom/baidu/bdgame/sdk/obf/bl;->f(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)Z

    move-result v0

    goto :goto_39

    .line 288
    :cond_6b
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt$12;->a:Lcom/baidu/bdgame/sdk/obf/mt;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/mt;->k()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/mt$12;->a:Lcom/baidu/bdgame/sdk/obf/mt;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/mt;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_visitor_bind_wrong_account"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ln;->a(Landroid/content/Context;I)V

    goto :goto_5a
.end method
