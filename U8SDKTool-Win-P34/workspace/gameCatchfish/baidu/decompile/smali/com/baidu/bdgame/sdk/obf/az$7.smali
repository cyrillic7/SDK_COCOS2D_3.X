.class final Lcom/baidu/bdgame/sdk/obf/az$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/az;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/bdgame/sdk/obf/n",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/baidu/bdgame/sdk/obf/r;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/az;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/az;)V
    .registers 2

    .prologue
    .line 299
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/az$7;->a:Lcom/baidu/bdgame/sdk/obf/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 299
    check-cast p3, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/az$7;->a(ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/r;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 304
    if-nez p1, :cond_e0

    if-eqz p3, :cond_e0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_e0

    .line 306
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az$7;->a:Lcom/baidu/bdgame/sdk/obf/az;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/az;->a(Lcom/baidu/bdgame/sdk/obf/az;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_93

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az$7;->a:Lcom/baidu/bdgame/sdk/obf/az;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/az;->d(Lcom/baidu/bdgame/sdk/obf/az;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 308
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/az$7;->a:Lcom/baidu/bdgame/sdk/obf/az;

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/r;

    invoke-static {v1, v0}, Lcom/baidu/bdgame/sdk/obf/az;->a(Lcom/baidu/bdgame/sdk/obf/az;Lcom/baidu/bdgame/sdk/obf/r;)Lcom/baidu/bdgame/sdk/obf/r;

    .line 309
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az$7;->a:Lcom/baidu/bdgame/sdk/obf/az;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/az;->a(Lcom/baidu/bdgame/sdk/obf/az;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/az$7;->a:Lcom/baidu/bdgame/sdk/obf/az;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/az;->j(Lcom/baidu/bdgame/sdk/obf/az;)Lcom/baidu/bdgame/sdk/obf/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/r;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az$7;->a:Lcom/baidu/bdgame/sdk/obf/az;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/az;->j(Lcom/baidu/bdgame/sdk/obf/az;)Lcom/baidu/bdgame/sdk/obf/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/r;->a()Lcom/baidu/bdgame/sdk/obf/s;

    move-result-object v0

    if-eqz v0, :cond_e1

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az$7;->a:Lcom/baidu/bdgame/sdk/obf/az;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/az;->j(Lcom/baidu/bdgame/sdk/obf/az;)Lcom/baidu/bdgame/sdk/obf/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/r;->a()Lcom/baidu/bdgame/sdk/obf/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/s;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e1

    .line 312
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az$7;->a:Lcom/baidu/bdgame/sdk/obf/az;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/az;->j(Lcom/baidu/bdgame/sdk/obf/az;)Lcom/baidu/bdgame/sdk/obf/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/r;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ko;->b([B)Ljava/lang/String;

    move-result-object v0

    .line 313
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/az$7;->a:Lcom/baidu/bdgame/sdk/obf/az;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/az;->d(Lcom/baidu/bdgame/sdk/obf/az;)Landroid/widget/EditText;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/az$7;->a:Lcom/baidu/bdgame/sdk/obf/az;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/az;->d(Lcom/baidu/bdgame/sdk/obf/az;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 320
    :cond_93
    :goto_93
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az$7;->a:Lcom/baidu/bdgame/sdk/obf/az;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ba;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/az$7;->a:Lcom/baidu/bdgame/sdk/obf/az;

    invoke-static {v2}, Lcom/baidu/bdgame/sdk/obf/az;->e(Lcom/baidu/bdgame/sdk/obf/az;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/cd;->k()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p3}, Lcom/baidu/bdgame/sdk/obf/ba;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/az;->a(Lcom/baidu/bdgame/sdk/obf/az;Lcom/baidu/bdgame/sdk/obf/ba;)Lcom/baidu/bdgame/sdk/obf/ba;

    .line 321
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az$7;->a:Lcom/baidu/bdgame/sdk/obf/az;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/az;->m(Lcom/baidu/bdgame/sdk/obf/az;)Lcom/baidu/bdgame/sdk/obf/ba;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/az$7;->a:Lcom/baidu/bdgame/sdk/obf/az;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/az;->g(Lcom/baidu/bdgame/sdk/obf/az;)Landroid/widget/LinearLayout;

    move-result-object v1

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/az$7$1;

    invoke-direct {v2, p0}, Lcom/baidu/bdgame/sdk/obf/az$7$1;-><init>(Lcom/baidu/bdgame/sdk/obf/az$7;)V

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/ba;->a(Landroid/view/ViewGroup;Lcom/baidu/bdgame/sdk/obf/ba$c;)V

    .line 331
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az$7;->a:Lcom/baidu/bdgame/sdk/obf/az;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/az;->m(Lcom/baidu/bdgame/sdk/obf/az;)Lcom/baidu/bdgame/sdk/obf/ba;

    move-result-object v0

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/az$7$2;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/az$7$2;-><init>(Lcom/baidu/bdgame/sdk/obf/az$7;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ba;->a(Lcom/baidu/bdgame/sdk/obf/ba$a;)V

    .line 351
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az$7;->a:Lcom/baidu/bdgame/sdk/obf/az;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/az;->m(Lcom/baidu/bdgame/sdk/obf/az;)Lcom/baidu/bdgame/sdk/obf/ba;

    move-result-object v0

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/az$7$3;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/az$7$3;-><init>(Lcom/baidu/bdgame/sdk/obf/az$7;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ba;->a(Lcom/baidu/bdgame/sdk/obf/ba$b;)V

    .line 362
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az$7;->a:Lcom/baidu/bdgame/sdk/obf/az;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/az;->f(Lcom/baidu/bdgame/sdk/obf/az;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 364
    :cond_e0
    return-void

    .line 316
    :cond_e1
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az$7;->a:Lcom/baidu/bdgame/sdk/obf/az;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/az;->d(Lcom/baidu/bdgame/sdk/obf/az;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_93
.end method
