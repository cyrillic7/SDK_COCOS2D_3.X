.class final Lcom/unionpay/mobile/android/pro/views/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/pro/views/e;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/pro/views/e;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/pro/views/f;->a:Lcom/unionpay/mobile/android/pro/views/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/f;->a:Lcom/unionpay/mobile/android/pro/views/e;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pro/views/e;->a(Lcom/unionpay/mobile/android/pro/views/e;)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/f;->a:Lcom/unionpay/mobile/android/pro/views/e;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pro/views/e;->b(Lcom/unionpay/mobile/android/pro/views/e;)Lcom/unionpay/mobile/android/upviews/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upviews/a;->d()Z

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/f;->a:Lcom/unionpay/mobile/android/pro/views/e;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pro/views/e;->b(Lcom/unionpay/mobile/android/pro/views/e;)Lcom/unionpay/mobile/android/upviews/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upviews/a;->a()Lcom/unionpay/mobile/android/upviews/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upviews/a$a;->a()Z

    move-result v1

    if-nez v1, :cond_2a

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/f;->a:Lcom/unionpay/mobile/android/pro/views/e;

    iget-object v0, v0, Lcom/unionpay/mobile/android/upviews/a$a;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/unionpay/mobile/android/pro/views/e;->a(Lcom/unionpay/mobile/android/pro/views/e;Ljava/lang/String;)V

    goto :goto_8

    :cond_2a
    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/f;->a:Lcom/unionpay/mobile/android/pro/views/e;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pro/views/e;->c(Lcom/unionpay/mobile/android/pro/views/e;)Lcom/unionpay/mobile/android/upwidget/a;

    move-result-object v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/f;->a:Lcom/unionpay/mobile/android/pro/views/e;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pro/views/e;->c(Lcom/unionpay/mobile/android/pro/views/e;)Lcom/unionpay/mobile/android/upwidget/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upwidget/a;->e()Z

    move-result v0

    if-nez v0, :cond_4e

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/f;->a:Lcom/unionpay/mobile/android/pro/views/e;

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/f;->a:Lcom/unionpay/mobile/android/pro/views/e;

    invoke-static {v1}, Lcom/unionpay/mobile/android/pro/views/e;->c(Lcom/unionpay/mobile/android/pro/views/e;)Lcom/unionpay/mobile/android/upwidget/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/upwidget/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/pro/views/e;->b(Lcom/unionpay/mobile/android/pro/views/e;Ljava/lang/String;)V

    goto :goto_8

    :cond_4e
    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/f;->a:Lcom/unionpay/mobile/android/pro/views/e;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pro/views/e;->d(Lcom/unionpay/mobile/android/pro/views/e;)Lcom/unionpay/mobile/android/upwidget/a;

    move-result-object v0

    if-eqz v0, :cond_72

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/f;->a:Lcom/unionpay/mobile/android/pro/views/e;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pro/views/e;->d(Lcom/unionpay/mobile/android/pro/views/e;)Lcom/unionpay/mobile/android/upwidget/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upwidget/a;->e()Z

    move-result v0

    if-nez v0, :cond_72

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/f;->a:Lcom/unionpay/mobile/android/pro/views/e;

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/f;->a:Lcom/unionpay/mobile/android/pro/views/e;

    invoke-static {v1}, Lcom/unionpay/mobile/android/pro/views/e;->d(Lcom/unionpay/mobile/android/pro/views/e;)Lcom/unionpay/mobile/android/upwidget/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/upwidget/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/pro/views/e;->c(Lcom/unionpay/mobile/android/pro/views/e;Ljava/lang/String;)V

    goto :goto_8

    :cond_72
    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/f;->a:Lcom/unionpay/mobile/android/pro/views/e;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pro/views/e;->e(Lcom/unionpay/mobile/android/pro/views/e;)Lcom/unionpay/mobile/android/widgets/m;

    move-result-object v0

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->U:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/f;->a:Lcom/unionpay/mobile/android/pro/views/e;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/f;->a:Lcom/unionpay/mobile/android/pro/views/e;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pro/views/e;->g(Lcom/unionpay/mobile/android/pro/views/e;)Lcom/unionpay/mobile/android/model/b;

    move-result-object v0

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->l:Ljava/util/List;

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/f;->a:Lcom/unionpay/mobile/android/pro/views/e;

    invoke-static {v2}, Lcom/unionpay/mobile/android/pro/views/e;->f(Lcom/unionpay/mobile/android/pro/views/e;)Lcom/unionpay/mobile/android/model/b;

    move-result-object v2

    iget v2, v2, Lcom/unionpay/mobile/android/model/b;->I:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/mobile/android/model/c;

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/f;->a:Lcom/unionpay/mobile/android/pro/views/e;

    invoke-static {v2}, Lcom/unionpay/mobile/android/pro/views/e;->b(Lcom/unionpay/mobile/android/pro/views/e;)Lcom/unionpay/mobile/android/upviews/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unionpay/mobile/android/upviews/a;->a()Lcom/unionpay/mobile/android/upviews/a$a;

    move-result-object v2

    iget-object v2, v2, Lcom/unionpay/mobile/android/upviews/a$a;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/unionpay/mobile/android/pro/views/f;->a:Lcom/unionpay/mobile/android/pro/views/e;

    invoke-static {v3}, Lcom/unionpay/mobile/android/pro/views/e;->b(Lcom/unionpay/mobile/android/pro/views/e;)Lcom/unionpay/mobile/android/upviews/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/unionpay/mobile/android/upviews/a;->c()Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/unionpay/mobile/android/pro/views/e;->a(Lcom/unionpay/mobile/android/pro/views/e;Lcom/unionpay/mobile/android/model/c;Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_8
.end method
