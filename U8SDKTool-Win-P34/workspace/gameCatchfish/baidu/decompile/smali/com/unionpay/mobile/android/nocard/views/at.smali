.class final Lcom/unionpay/mobile/android/nocard/views/at;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/nocard/views/as;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/nocard/views/as;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/nocard/views/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/nocard/views/as;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/nocard/views/as;->o()Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    return-void

    :cond_9
    const-string v0, ""

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/nocard/views/as;

    invoke-static {v1}, Lcom/unionpay/mobile/android/nocard/views/as;->a(Lcom/unionpay/mobile/android/nocard/views/as;)Lcom/unionpay/mobile/android/upviews/a;

    move-result-object v1

    if-eqz v1, :cond_36

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/nocard/views/as;

    invoke-static {v0}, Lcom/unionpay/mobile/android/nocard/views/as;->a(Lcom/unionpay/mobile/android/nocard/views/as;)Lcom/unionpay/mobile/android/upviews/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upviews/a;->d()Z

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/nocard/views/as;

    invoke-static {v0}, Lcom/unionpay/mobile/android/nocard/views/as;->a(Lcom/unionpay/mobile/android/nocard/views/as;)Lcom/unionpay/mobile/android/upviews/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upviews/a;->b()Lcom/unionpay/mobile/android/upviews/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upviews/a$a;->a()Z

    move-result v1

    if-nez v1, :cond_34

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/nocard/views/as;

    iget-object v0, v0, Lcom/unionpay/mobile/android/upviews/a$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/unionpay/mobile/android/nocard/views/as;->a(Ljava/lang/String;)V

    goto :goto_8

    :cond_34
    iget-object v0, v0, Lcom/unionpay/mobile/android/upviews/a$a;->b:Ljava/lang/String;

    :cond_36
    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/nocard/views/as;

    invoke-static {v1}, Lcom/unionpay/mobile/android/nocard/views/as;->b(Lcom/unionpay/mobile/android/nocard/views/as;)Lcom/unionpay/mobile/android/upviews/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/upviews/a;->d()Z

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/nocard/views/as;

    invoke-static {v1}, Lcom/unionpay/mobile/android/nocard/views/as;->b(Lcom/unionpay/mobile/android/nocard/views/as;)Lcom/unionpay/mobile/android/upviews/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/upviews/a;->b()Lcom/unionpay/mobile/android/upviews/a$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/upviews/a$a;->a()Z

    move-result v2

    if-nez v2, :cond_57

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/nocard/views/as;

    iget-object v1, v1, Lcom/unionpay/mobile/android/upviews/a$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/nocard/views/as;->a(Ljava/lang/String;)V

    goto :goto_8

    :cond_57
    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/nocard/views/as;

    invoke-static {v2}, Lcom/unionpay/mobile/android/nocard/views/as;->c(Lcom/unionpay/mobile/android/nocard/views/as;)Lcom/unionpay/mobile/android/upwidget/a;

    move-result-object v2

    if-eqz v2, :cond_7b

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/nocard/views/as;

    invoke-static {v2}, Lcom/unionpay/mobile/android/nocard/views/as;->c(Lcom/unionpay/mobile/android/nocard/views/as;)Lcom/unionpay/mobile/android/upwidget/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unionpay/mobile/android/upwidget/a;->e()Z

    move-result v2

    if-nez v2, :cond_7b

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/nocard/views/as;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/nocard/views/as;

    invoke-static {v1}, Lcom/unionpay/mobile/android/nocard/views/as;->c(Lcom/unionpay/mobile/android/nocard/views/as;)Lcom/unionpay/mobile/android/upwidget/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/upwidget/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/nocard/views/as;->a(Ljava/lang/String;)V

    goto :goto_8

    :cond_7b
    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/nocard/views/as;

    invoke-static {v2}, Lcom/unionpay/mobile/android/nocard/views/as;->d(Lcom/unionpay/mobile/android/nocard/views/as;)Lcom/unionpay/mobile/android/upwidget/a;

    move-result-object v2

    if-eqz v2, :cond_a0

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/nocard/views/as;

    invoke-static {v2}, Lcom/unionpay/mobile/android/nocard/views/as;->d(Lcom/unionpay/mobile/android/nocard/views/as;)Lcom/unionpay/mobile/android/upwidget/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unionpay/mobile/android/upwidget/a;->e()Z

    move-result v2

    if-nez v2, :cond_a0

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/nocard/views/as;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/nocard/views/as;

    invoke-static {v1}, Lcom/unionpay/mobile/android/nocard/views/as;->d(Lcom/unionpay/mobile/android/nocard/views/as;)Lcom/unionpay/mobile/android/upwidget/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/upwidget/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/nocard/views/as;->a(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_a0
    iget-object v1, v1, Lcom/unionpay/mobile/android/upviews/a$a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/nocard/views/as;

    invoke-static {v0}, Lcom/unionpay/mobile/android/nocard/views/as;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_c1
    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/nocard/views/as;

    iget-object v1, v1, Lcom/unionpay/mobile/android/nocard/views/as;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object v2, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/languages/c;->U:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/nocard/views/as;

    iget-object v1, v1, Lcom/unionpay/mobile/android/nocard/views/as;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->z:Ljava/lang/String;

    if-eqz v1, :cond_ed

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/nocard/views/as;

    iget-object v1, v1, Lcom/unionpay/mobile/android/nocard/views/as;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->z:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_ed

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/nocard/views/as;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/nocard/views/as;

    invoke-static {v2}, Lcom/unionpay/mobile/android/nocard/views/as;->e(Lcom/unionpay/mobile/android/nocard/views/as;)Z

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/unionpay/mobile/android/nocard/views/as;->a(Lcom/unionpay/mobile/android/nocard/views/as;ZLjava/lang/String;)V

    goto/16 :goto_8

    :cond_ed
    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/nocard/views/as;

    invoke-static {v1, v0}, Lcom/unionpay/mobile/android/nocard/views/as;->a(Lcom/unionpay/mobile/android/nocard/views/as;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_f4
    move-object v0, v1

    goto :goto_c1
.end method
