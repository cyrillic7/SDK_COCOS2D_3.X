.class final Lcom/baidu/bdgame/sdk/obf/ay$27$1;
.super Lcom/baidu/bdgame/sdk/obf/bi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ay$27;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ay$27;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ay$27;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 342
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ay$27$1;->a:Lcom/baidu/bdgame/sdk/obf/ay$27;

    invoke-direct {p0, p2}, Lcom/baidu/bdgame/sdk/obf/bi;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 352
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay$27$1;->a:Lcom/baidu/bdgame/sdk/obf/ay$27;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ay$27;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ay;->a(Lcom/baidu/bdgame/sdk/obf/ay;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kx;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 353
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ko;->b([B)Ljava/lang/String;

    move-result-object v1

    .line 354
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ay$27$1;->a:Lcom/baidu/bdgame/sdk/obf/ay$27;

    iget-object v2, v2, Lcom/baidu/bdgame/sdk/obf/ay$27;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v2}, Lcom/baidu/bdgame/sdk/obf/ay;->m(Lcom/baidu/bdgame/sdk/obf/ay;)Lcom/baidu/bdgame/sdk/obf/r;

    move-result-object v2

    if-eqz v2, :cond_93

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ay$27$1;->a:Lcom/baidu/bdgame/sdk/obf/ay$27;

    iget-object v2, v2, Lcom/baidu/bdgame/sdk/obf/ay$27;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v2}, Lcom/baidu/bdgame/sdk/obf/ay;->m(Lcom/baidu/bdgame/sdk/obf/ay;)Lcom/baidu/bdgame/sdk/obf/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/r;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_93

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ay$27$1;->a:Lcom/baidu/bdgame/sdk/obf/ay$27;

    iget-object v2, v2, Lcom/baidu/bdgame/sdk/obf/ay$27;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v2}, Lcom/baidu/bdgame/sdk/obf/ay;->d(Lcom/baidu/bdgame/sdk/obf/ay;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_93

    .line 357
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ay$27$1;->a:Lcom/baidu/bdgame/sdk/obf/ay$27;

    iget-object v1, v1, Lcom/baidu/bdgame/sdk/obf/ay$27;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ay;->e(Lcom/baidu/bdgame/sdk/obf/ay;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ay$27$1;->a:Lcom/baidu/bdgame/sdk/obf/ay$27;

    iget-object v2, v2, Lcom/baidu/bdgame/sdk/obf/ay$27;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v2}, Lcom/baidu/bdgame/sdk/obf/ay;->e(Lcom/baidu/bdgame/sdk/obf/ay;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/cd;->k()Landroid/content/Context;

    move-result-object v2

    const-string v3, "bdp_dialog_loading_login"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/cd;->c(I)V

    .line 358
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ay$27$1;->a:Lcom/baidu/bdgame/sdk/obf/ay$27;

    iget-object v1, v1, Lcom/baidu/bdgame/sdk/obf/ay$27;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ay;->e(Lcom/baidu/bdgame/sdk/obf/ay;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/cd;->k()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ay$27$1;->a:Lcom/baidu/bdgame/sdk/obf/ay$27;

    iget-object v2, v2, Lcom/baidu/bdgame/sdk/obf/ay$27;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v2}, Lcom/baidu/bdgame/sdk/obf/ay;->m(Lcom/baidu/bdgame/sdk/obf/ay;)Lcom/baidu/bdgame/sdk/obf/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/r;->a()Lcom/baidu/bdgame/sdk/obf/s;

    move-result-object v2

    new-instance v3, Lcom/baidu/bdgame/sdk/obf/ay$27$1$1;

    invoke-direct {v3, p0}, Lcom/baidu/bdgame/sdk/obf/ay$27$1$1;-><init>(Lcom/baidu/bdgame/sdk/obf/ay$27$1;)V

    invoke-static {v1, v0, v2, v3}, Lcom/baidu/bdgame/sdk/obf/bl;->a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/s;Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/bk;

    .line 379
    :goto_87
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay$27$1;->a:Lcom/baidu/bdgame/sdk/obf/ay$27;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ay$27;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ay;->e(Lcom/baidu/bdgame/sdk/obf/ay;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cd;->m()V

    .line 380
    return-void

    .line 377
    :cond_93
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay$27$1;->a:Lcom/baidu/bdgame/sdk/obf/ay$27;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ay$27;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    sget-object v1, Lcom/baidu/sapi2/dto/LoginDTO$LoginType;->MERGE:Lcom/baidu/sapi2/dto/LoginDTO$LoginType;

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ay;->a(Lcom/baidu/bdgame/sdk/obf/ay;Lcom/baidu/sapi2/dto/LoginDTO$LoginType;)V

    goto :goto_87
.end method

.method protected a(Landroid/content/Context;ILjava/lang/String;)V
    .registers 5

    .prologue
    .line 346
    invoke-static {p1, p3}, Lcom/baidu/bdgame/sdk/obf/ln;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay$27$1;->a:Lcom/baidu/bdgame/sdk/obf/ay$27;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ay$27;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ay;->e(Lcom/baidu/bdgame/sdk/obf/ay;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cd;->m()V

    .line 348
    return-void
.end method
