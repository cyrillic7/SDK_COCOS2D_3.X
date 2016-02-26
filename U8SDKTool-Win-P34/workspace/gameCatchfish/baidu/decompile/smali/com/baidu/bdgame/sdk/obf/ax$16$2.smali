.class final Lcom/baidu/bdgame/sdk/obf/ax$16$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/ba$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ax$16;->a(ILjava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ax$16;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ax$16;)V
    .registers 2

    .prologue
    .line 379
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ax$16$2;->a:Lcom/baidu/bdgame/sdk/obf/ax$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/bdgame/sdk/obf/r;)V
    .registers 6

    .prologue
    .line 383
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax$16$2;->a:Lcom/baidu/bdgame/sdk/obf/ax$16;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ax$16;->a:Lcom/baidu/bdgame/sdk/obf/ax;

    invoke-static {v0, p1}, Lcom/baidu/bdgame/sdk/obf/ax;->a(Lcom/baidu/bdgame/sdk/obf/ax;Lcom/baidu/bdgame/sdk/obf/r;)Lcom/baidu/bdgame/sdk/obf/r;

    .line 384
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax$16$2;->a:Lcom/baidu/bdgame/sdk/obf/ax$16;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ax$16;->a:Lcom/baidu/bdgame/sdk/obf/ax;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ax;->a(Lcom/baidu/bdgame/sdk/obf/ax;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/r;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 385
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax$16$2;->a:Lcom/baidu/bdgame/sdk/obf/ax$16;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ax$16;->a:Lcom/baidu/bdgame/sdk/obf/ax;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ax;->j(Lcom/baidu/bdgame/sdk/obf/ax;)Lcom/baidu/bdgame/sdk/obf/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/r;->a()Lcom/baidu/bdgame/sdk/obf/s;

    move-result-object v0

    if-eqz v0, :cond_8e

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax$16$2;->a:Lcom/baidu/bdgame/sdk/obf/ax$16;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ax$16;->a:Lcom/baidu/bdgame/sdk/obf/ax;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ax;->j(Lcom/baidu/bdgame/sdk/obf/ax;)Lcom/baidu/bdgame/sdk/obf/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/r;->a()Lcom/baidu/bdgame/sdk/obf/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/s;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8e

    .line 387
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/r;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ko;->b([B)Ljava/lang/String;

    move-result-object v0

    .line 388
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ax$16$2;->a:Lcom/baidu/bdgame/sdk/obf/ax$16;

    iget-object v1, v1, Lcom/baidu/bdgame/sdk/obf/ax$16;->a:Lcom/baidu/bdgame/sdk/obf/ax;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ax;->d(Lcom/baidu/bdgame/sdk/obf/ax;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0xc

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 389
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ax$16$2;->a:Lcom/baidu/bdgame/sdk/obf/ax$16;

    iget-object v1, v1, Lcom/baidu/bdgame/sdk/obf/ax$16;->a:Lcom/baidu/bdgame/sdk/obf/ax;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ax;->d(Lcom/baidu/bdgame/sdk/obf/ax;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 393
    :goto_63
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax$16$2;->a:Lcom/baidu/bdgame/sdk/obf/ax$16;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ax$16;->a:Lcom/baidu/bdgame/sdk/obf/ax;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ax;->g(Lcom/baidu/bdgame/sdk/obf/ax;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 394
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax$16$2;->a:Lcom/baidu/bdgame/sdk/obf/ax$16;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ax$16;->a:Lcom/baidu/bdgame/sdk/obf/ax;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ax;->f(Lcom/baidu/bdgame/sdk/obf/ax;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ax$16$2;->a:Lcom/baidu/bdgame/sdk/obf/ax$16;

    iget-object v1, v1, Lcom/baidu/bdgame/sdk/obf/ax$16;->a:Lcom/baidu/bdgame/sdk/obf/ax;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ax;->e(Lcom/baidu/bdgame/sdk/obf/ax;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/cd;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_icon_unfold_selector"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 397
    return-void

    .line 391
    :cond_8e
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax$16$2;->a:Lcom/baidu/bdgame/sdk/obf/ax$16;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ax$16;->a:Lcom/baidu/bdgame/sdk/obf/ax;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ax;->d(Lcom/baidu/bdgame/sdk/obf/ax;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_63
.end method
