.class Lcom/duoku/platform/view/a/h$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/view/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/a/h;


# direct methods
.method constructor <init>(Lcom/duoku/platform/view/a/h;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/view/a/h$2;->a:Lcom/duoku/platform/view/a/h;

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x40800000

    .line 361
    invoke-static {}, Lcom/duoku/platform/ui/b/d;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 378
    :cond_9
    :goto_9
    return-void

    .line 364
    :cond_a
    iget-object v0, p0, Lcom/duoku/platform/view/a/h$2;->a:Lcom/duoku/platform/view/a/h;

    invoke-static {v0}, Lcom/duoku/platform/view/a/h;->d(Lcom/duoku/platform/view/a/h;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 367
    iget-object v0, p0, Lcom/duoku/platform/view/a/h$2;->a:Lcom/duoku/platform/view/a/h;

    invoke-static {v0}, Lcom/duoku/platform/view/a/h;->e(Lcom/duoku/platform/view/a/h;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/a/h$2;->a:Lcom/duoku/platform/view/a/h;

    iget-object v1, v1, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    const-string v2, "dk_payment_edittext_selector"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 368
    iget-object v0, p0, Lcom/duoku/platform/view/a/h$2;->a:Lcom/duoku/platform/view/a/h;

    invoke-static {v0}, Lcom/duoku/platform/view/a/h;->f(Lcom/duoku/platform/view/a/h;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/a/h$2;->a:Lcom/duoku/platform/view/a/h;

    iget-object v1, v1, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    const-string v2, "dk_payment_edittext_selector"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 369
    iget-object v0, p0, Lcom/duoku/platform/view/a/h$2;->a:Lcom/duoku/platform/view/a/h;

    invoke-static {v0}, Lcom/duoku/platform/view/a/h;->e(Lcom/duoku/platform/view/a/h;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/a/h$2;->a:Lcom/duoku/platform/view/a/h;

    iget-object v1, v1, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/duoku/platform/ui/b/b;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/duoku/platform/view/a/h$2;->a:Lcom/duoku/platform/view/a/h;

    iget-object v2, v2, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/duoku/platform/ui/b/b;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 372
    iget-object v0, p0, Lcom/duoku/platform/view/a/h$2;->a:Lcom/duoku/platform/view/a/h;

    invoke-static {v0}, Lcom/duoku/platform/view/a/h;->g(Lcom/duoku/platform/view/a/h;)V

    .line 374
    invoke-static {}, Lcom/duoku/platform/j/a;->a()Lcom/duoku/platform/j/a;

    move-result-object v0

    const-string v1, "7"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/j/a;->a(Ljava/lang/String;)V

    .line 375
    invoke-static {}, Lcom/duoku/platform/j/a;->a()Lcom/duoku/platform/j/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/a/h$2;->a:Lcom/duoku/platform/view/a/h;

    iget-object v1, v1, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    const-string v2, "cp_submit_statistic"

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/j/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_9
.end method
