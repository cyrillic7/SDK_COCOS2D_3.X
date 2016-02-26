.class final Lcom/baidu/bdgame/sdk/obf/mt$14;
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
    .line 304
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/mt$14;->a:Lcom/baidu/bdgame/sdk/obf/mt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 308
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt$14;->a:Lcom/baidu/bdgame/sdk/obf/mt;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/mt;->a(Lcom/baidu/bdgame/sdk/obf/mt;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kx;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 309
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/mt$14;->a:Lcom/baidu/bdgame/sdk/obf/mt;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/mt;->e(Lcom/baidu/bdgame/sdk/obf/mt;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 310
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/mt$14;->a:Lcom/baidu/bdgame/sdk/obf/mt;

    invoke-static {v2}, Lcom/baidu/bdgame/sdk/obf/mt;->i(Lcom/baidu/bdgame/sdk/obf/mt;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 312
    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/mt$14;->a:Lcom/baidu/bdgame/sdk/obf/mt;

    invoke-static {v3}, Lcom/baidu/bdgame/sdk/obf/mt;->k(Lcom/baidu/bdgame/sdk/obf/mt;)Lcom/baidu/platformsdk/BDPlatformUser;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/platformsdk/BDPlatformUser;->isGuest()Z

    move-result v3

    if-eqz v3, :cond_52

    .line 313
    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/mt$14;->a:Lcom/baidu/bdgame/sdk/obf/mt;

    invoke-virtual {v3}, Lcom/baidu/bdgame/sdk/obf/mt;->k()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/baidu/bdgame/sdk/obf/mt$14$1;

    invoke-direct {v4, p0}, Lcom/baidu/bdgame/sdk/obf/mt$14$1;-><init>(Lcom/baidu/bdgame/sdk/obf/mt$14;)V

    invoke-static {v3, v0, v2, v1, v4}, Lcom/baidu/bdgame/sdk/obf/bl;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)Z

    move-result v0

    .line 330
    :goto_49
    if-eqz v0, :cond_51

    .line 331
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt$14;->a:Lcom/baidu/bdgame/sdk/obf/mt;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/mt;->a(Ljava/lang/String;)V

    .line 333
    :cond_51
    return-void

    .line 321
    :cond_52
    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/mt$14;->a:Lcom/baidu/bdgame/sdk/obf/mt;

    invoke-virtual {v3}, Lcom/baidu/bdgame/sdk/obf/mt;->k()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/baidu/bdgame/sdk/obf/mt$14$2;

    invoke-direct {v4, p0}, Lcom/baidu/bdgame/sdk/obf/mt$14$2;-><init>(Lcom/baidu/bdgame/sdk/obf/mt$14;)V

    invoke-static {v3, v0, v2, v1, v4}, Lcom/baidu/bdgame/sdk/obf/bl;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)Z

    move-result v0

    goto :goto_49
.end method
