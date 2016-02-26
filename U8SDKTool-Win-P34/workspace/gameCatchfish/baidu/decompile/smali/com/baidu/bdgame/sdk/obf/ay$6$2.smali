.class final Lcom/baidu/bdgame/sdk/obf/ay$6$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/ba$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ay$6;->a(ILjava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ay$6;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ay$6;)V
    .registers 2

    .prologue
    .line 549
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ay$6$2;->a:Lcom/baidu/bdgame/sdk/obf/ay$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/bdgame/sdk/obf/r;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 553
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay$6$2;->a:Lcom/baidu/bdgame/sdk/obf/ay$6;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ay$6;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v0, p1}, Lcom/baidu/bdgame/sdk/obf/ay;->a(Lcom/baidu/bdgame/sdk/obf/ay;Lcom/baidu/bdgame/sdk/obf/r;)Lcom/baidu/bdgame/sdk/obf/r;

    .line 554
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay$6$2;->a:Lcom/baidu/bdgame/sdk/obf/ay$6;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ay$6;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ay;->a(Lcom/baidu/bdgame/sdk/obf/ay;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/r;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 555
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay$6$2;->a:Lcom/baidu/bdgame/sdk/obf/ay$6;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ay$6;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ay;->m(Lcom/baidu/bdgame/sdk/obf/ay;)Lcom/baidu/bdgame/sdk/obf/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/r;->a()Lcom/baidu/bdgame/sdk/obf/s;

    move-result-object v0

    if-eqz v0, :cond_95

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay$6$2;->a:Lcom/baidu/bdgame/sdk/obf/ay$6;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ay$6;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ay;->m(Lcom/baidu/bdgame/sdk/obf/ay;)Lcom/baidu/bdgame/sdk/obf/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/r;->a()Lcom/baidu/bdgame/sdk/obf/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/s;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_95

    .line 557
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/r;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ko;->b([B)Ljava/lang/String;

    move-result-object v0

    .line 558
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ay$6$2;->a:Lcom/baidu/bdgame/sdk/obf/ay$6;

    iget-object v1, v1, Lcom/baidu/bdgame/sdk/obf/ay$6;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ay;->d(Lcom/baidu/bdgame/sdk/obf/ay;)Landroid/widget/EditText;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 559
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ay$6$2;->a:Lcom/baidu/bdgame/sdk/obf/ay$6;

    iget-object v1, v1, Lcom/baidu/bdgame/sdk/obf/ay$6;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ay;->d(Lcom/baidu/bdgame/sdk/obf/ay;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 563
    :goto_63
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay$6$2;->a:Lcom/baidu/bdgame/sdk/obf/ay$6;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ay$6;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ay;->g(Lcom/baidu/bdgame/sdk/obf/ay;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 564
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay$6$2;->a:Lcom/baidu/bdgame/sdk/obf/ay$6;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ay$6;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ay;->f(Lcom/baidu/bdgame/sdk/obf/ay;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ay$6$2;->a:Lcom/baidu/bdgame/sdk/obf/ay$6;

    iget-object v1, v1, Lcom/baidu/bdgame/sdk/obf/ay$6;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ay;->e(Lcom/baidu/bdgame/sdk/obf/ay;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/cd;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_icon_unfold_selector"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 568
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay$6$2;->a:Lcom/baidu/bdgame/sdk/obf/ay$6;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ay$6;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v0, v3}, Lcom/baidu/bdgame/sdk/obf/ay;->a(Lcom/baidu/bdgame/sdk/obf/ay;Z)V

    .line 569
    return-void

    .line 561
    :cond_95
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay$6$2;->a:Lcom/baidu/bdgame/sdk/obf/ay$6;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ay$6;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ay;->d(Lcom/baidu/bdgame/sdk/obf/ay;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_63
.end method
