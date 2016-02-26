.class Lcom/baidu/bdgame/sdk/obf/fp$a;
.super Lcom/baidu/bdgame/sdk/obf/be;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/fp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/bdgame/sdk/obf/be",
        "<",
        "Lcom/baidu/bdgame/sdk/obf/fp;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/fp;)V
    .registers 2

    .prologue
    .line 222
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/be;-><init>(Ljava/lang/Object;)V

    .line 223
    return-void
.end method


# virtual methods
.method protected a(Lcom/baidu/bdgame/sdk/obf/fp;)V
    .registers 5

    .prologue
    .line 227
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/fp;->b(Lcom/baidu/bdgame/sdk/obf/fp;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/fp;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_bind_phone_verifycode_getting"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 229
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/fp;->b(Lcom/baidu/bdgame/sdk/obf/fp;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 230
    return-void
.end method

.method protected a(Lcom/baidu/bdgame/sdk/obf/fp;I)V
    .registers 9

    .prologue
    .line 234
    invoke-static {p1, p2}, Lcom/baidu/bdgame/sdk/obf/fp;->a(Lcom/baidu/bdgame/sdk/obf/fp;I)I

    .line 235
    const/16 v0, 0x3c

    if-ge p2, v0, :cond_d

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/fp;->isShowing()Z

    move-result v0

    if-nez v0, :cond_11

    .line 236
    :cond_d
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/fp$a;->b()V

    .line 243
    :goto_10
    return-void

    .line 239
    :cond_11
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/fp;->b(Lcom/baidu/bdgame/sdk/obf/fp;)Landroid/widget/Button;

    move-result-object v0

    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/fp;->d(Lcom/baidu/bdgame/sdk/obf/fp;)Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/fp;->c(Lcom/baidu/bdgame/sdk/obf/fp;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "bdp_account_bind_phone_verifycode_reget"

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

    goto :goto_10
.end method

.method protected synthetic a(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 218
    check-cast p1, Lcom/baidu/bdgame/sdk/obf/fp;

    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/fp$a;->a(Lcom/baidu/bdgame/sdk/obf/fp;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;I)V
    .registers 3

    .prologue
    .line 218
    check-cast p1, Lcom/baidu/bdgame/sdk/obf/fp;

    invoke-virtual {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/fp$a;->a(Lcom/baidu/bdgame/sdk/obf/fp;I)V

    return-void
.end method

.method protected b(Lcom/baidu/bdgame/sdk/obf/fp;)V
    .registers 5

    .prologue
    .line 247
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/fp;->a(Lcom/baidu/bdgame/sdk/obf/fp;I)I

    .line 248
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/fp;->b(Lcom/baidu/bdgame/sdk/obf/fp;)Landroid/widget/Button;

    move-result-object v0

    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/fp;->e(Lcom/baidu/bdgame/sdk/obf/fp;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_bind_phone_verifycode_get"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 250
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/fp;->b(Lcom/baidu/bdgame/sdk/obf/fp;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 251
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/fp;->a(Lcom/baidu/bdgame/sdk/obf/fp;Lcom/baidu/bdgame/sdk/obf/fp$a;)Lcom/baidu/bdgame/sdk/obf/fp$a;

    .line 252
    return-void
.end method

.method protected synthetic b(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 218
    check-cast p1, Lcom/baidu/bdgame/sdk/obf/fp;

    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/fp$a;->b(Lcom/baidu/bdgame/sdk/obf/fp;)V

    return-void
.end method

.method protected d()V
    .registers 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fp$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/fp;

    .line 256
    if-nez v0, :cond_b

    .line 259
    :goto_a
    return-void

    .line 258
    :cond_b
    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/fp$a;->a(Lcom/baidu/bdgame/sdk/obf/fp;)V

    goto :goto_a
.end method
