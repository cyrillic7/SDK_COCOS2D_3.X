.class final Lcom/baidu/bdgame/sdk/obf/ax$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ax;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ax;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ax;)V
    .registers 2

    .prologue
    .line 233
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ax$10;->a:Lcom/baidu/bdgame/sdk/obf/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax$10;->a:Lcom/baidu/bdgame/sdk/obf/ax;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ax;->e(Lcom/baidu/bdgame/sdk/obf/ax;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cd;->k()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/bq;->a(Landroid/content/Context;I)V

    .line 239
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax$10;->a:Lcom/baidu/bdgame/sdk/obf/ax;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ax;->e(Lcom/baidu/bdgame/sdk/obf/ax;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cd;->l()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0xb

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/bs;->a(I)Lcom/baidu/bdgame/sdk/obf/bs;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/bv;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bs;)V

    .line 241
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax$10;->a:Lcom/baidu/bdgame/sdk/obf/ax;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ax;->e(Lcom/baidu/bdgame/sdk/obf/ax;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ax$10;->a:Lcom/baidu/bdgame/sdk/obf/ax;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ax;->e(Lcom/baidu/bdgame/sdk/obf/ax;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/cd;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_dialog_loading_login"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cd;->c(I)V

    .line 242
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax$10;->a:Lcom/baidu/bdgame/sdk/obf/ax;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ax;->a(Lcom/baidu/bdgame/sdk/obf/ax;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kx;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 243
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ax$10;->a:Lcom/baidu/bdgame/sdk/obf/ax;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ax;->d(Lcom/baidu/bdgame/sdk/obf/ax;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 244
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/bdgame/sdk/obf/ko;->b([B)Ljava/lang/String;

    move-result-object v2

    .line 245
    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/ax$10;->a:Lcom/baidu/bdgame/sdk/obf/ax;

    invoke-static {v3}, Lcom/baidu/bdgame/sdk/obf/ax;->j(Lcom/baidu/bdgame/sdk/obf/ax;)Lcom/baidu/bdgame/sdk/obf/r;

    move-result-object v3

    if-eqz v3, :cond_a7

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/ax$10;->a:Lcom/baidu/bdgame/sdk/obf/ax;

    invoke-static {v3}, Lcom/baidu/bdgame/sdk/obf/ax;->j(Lcom/baidu/bdgame/sdk/obf/ax;)Lcom/baidu/bdgame/sdk/obf/r;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/bdgame/sdk/obf/r;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a7

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/ax$10;->a:Lcom/baidu/bdgame/sdk/obf/ax;

    invoke-static {v3}, Lcom/baidu/bdgame/sdk/obf/ax;->d(Lcom/baidu/bdgame/sdk/obf/ax;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a7

    .line 248
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ax$10;->a:Lcom/baidu/bdgame/sdk/obf/ax;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ax;->e(Lcom/baidu/bdgame/sdk/obf/ax;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/cd;->k()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ax$10;->a:Lcom/baidu/bdgame/sdk/obf/ax;

    invoke-static {v2}, Lcom/baidu/bdgame/sdk/obf/ax;->j(Lcom/baidu/bdgame/sdk/obf/ax;)Lcom/baidu/bdgame/sdk/obf/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/r;->a()Lcom/baidu/bdgame/sdk/obf/s;

    move-result-object v2

    new-instance v3, Lcom/baidu/bdgame/sdk/obf/ax$10$1;

    invoke-direct {v3, p0}, Lcom/baidu/bdgame/sdk/obf/ax$10$1;-><init>(Lcom/baidu/bdgame/sdk/obf/ax$10;)V

    invoke-static {v1, v0, v2, v3}, Lcom/baidu/bdgame/sdk/obf/bl;->a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/s;Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/bk;

    .line 293
    :goto_a6
    return-void

    .line 271
    :cond_a7
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ax$10;->a:Lcom/baidu/bdgame/sdk/obf/ax;

    invoke-static {v2}, Lcom/baidu/bdgame/sdk/obf/ax;->e(Lcom/baidu/bdgame/sdk/obf/ax;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/cd;->k()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/baidu/bdgame/sdk/obf/ax$10$2;

    invoke-direct {v3, p0}, Lcom/baidu/bdgame/sdk/obf/ax$10$2;-><init>(Lcom/baidu/bdgame/sdk/obf/ax$10;)V

    invoke-static {v2, v0, v1, v3}, Lcom/baidu/bdgame/sdk/obf/bl;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/bk;

    goto :goto_a6
.end method
