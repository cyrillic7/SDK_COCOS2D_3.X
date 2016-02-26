.class Lcom/baidu/bdgame/sdk/obf/mt$a;
.super Lcom/baidu/bdgame/sdk/obf/be;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/mt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/bdgame/sdk/obf/be",
        "<",
        "Lcom/baidu/bdgame/sdk/obf/mt;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/mt;)V
    .registers 2

    .prologue
    .line 474
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/be;-><init>(Ljava/lang/Object;)V

    .line 475
    return-void
.end method


# virtual methods
.method protected a(Lcom/baidu/bdgame/sdk/obf/mt;)V
    .registers 2

    .prologue
    .line 478
    return-void
.end method

.method protected a(Lcom/baidu/bdgame/sdk/obf/mt;I)V
    .registers 9

    .prologue
    .line 482
    const/16 v0, 0x3c

    if-ge p2, v0, :cond_e

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/mt;->l()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 483
    :cond_e
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mt$a;->b()V

    .line 488
    :goto_11
    return-void

    .line 486
    :cond_12
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/mt;->l(Lcom/baidu/bdgame/sdk/obf/mt;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/mt;->k()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/mt;->k()Landroid/content/Context;

    move-result-object v2

    const-string v3, "bdp_account_visitor_bind_verifycode_reget"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    rsub-int/lit8 v5, p2, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_11
.end method

.method protected synthetic a(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 471
    check-cast p1, Lcom/baidu/bdgame/sdk/obf/mt;

    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/mt$a;->a(Lcom/baidu/bdgame/sdk/obf/mt;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;I)V
    .registers 3

    .prologue
    .line 471
    check-cast p1, Lcom/baidu/bdgame/sdk/obf/mt;

    invoke-virtual {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/mt$a;->a(Lcom/baidu/bdgame/sdk/obf/mt;I)V

    return-void
.end method

.method protected b(Lcom/baidu/bdgame/sdk/obf/mt;)V
    .registers 5

    .prologue
    .line 492
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/mt;->l(Lcom/baidu/bdgame/sdk/obf/mt;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/mt;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_visitor_bind_verifycode_get"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 493
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/mt;->l(Lcom/baidu/bdgame/sdk/obf/mt;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 494
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/mt;->n(Lcom/baidu/bdgame/sdk/obf/mt;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 495
    return-void
.end method

.method protected synthetic b(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 471
    check-cast p1, Lcom/baidu/bdgame/sdk/obf/mt;

    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/mt$a;->b(Lcom/baidu/bdgame/sdk/obf/mt;)V

    return-void
.end method
