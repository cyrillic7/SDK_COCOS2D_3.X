.class Lcom/duoku/platform/view/a/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/view/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/a/c;


# direct methods
.method constructor <init>(Lcom/duoku/platform/view/a/c;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/view/a/c$2;->a:Lcom/duoku/platform/view/a/c;

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 256
    iget-object v0, p0, Lcom/duoku/platform/view/a/c$2;->a:Lcom/duoku/platform/view/a/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/duoku/platform/view/a/c;->a(Lcom/duoku/platform/view/a/c;Z)V

    .line 258
    invoke-static {}, Lcom/duoku/platform/ui/b/a;->a()Lcom/duoku/platform/ui/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/ui/b/a;->b()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 264
    iget-object v0, p0, Lcom/duoku/platform/view/a/c$2;->a:Lcom/duoku/platform/view/a/c;

    invoke-static {v0}, Lcom/duoku/platform/view/a/c;->e(Lcom/duoku/platform/view/a/c;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 268
    :cond_1c
    iget-object v0, p0, Lcom/duoku/platform/view/a/c$2;->a:Lcom/duoku/platform/view/a/c;

    invoke-static {v0}, Lcom/duoku/platform/view/a/c;->c(Lcom/duoku/platform/view/a/c;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/duoku/platform/view/a/c$2;->a:Lcom/duoku/platform/view/a/c;

    invoke-static {v0}, Lcom/duoku/platform/view/a/c;->b(Lcom/duoku/platform/view/a/c;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/duoku/platform/view/a/c$2;->a:Lcom/duoku/platform/view/a/c;

    invoke-static {v0}, Lcom/duoku/platform/view/a/c;->d(Lcom/duoku/platform/view/a/c;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/duoku/platform/view/a/c$2;->a:Lcom/duoku/platform/view/a/c;

    invoke-static {v0}, Lcom/duoku/platform/view/a/c;->f(Lcom/duoku/platform/view/a/c;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/duoku/platform/view/a/c$2;->a:Lcom/duoku/platform/view/a/c;

    invoke-static {v0}, Lcom/duoku/platform/view/a/c;->g(Lcom/duoku/platform/view/a/c;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/ui/a/j;

    invoke-virtual {v0}, Lcom/duoku/platform/ui/a/j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v0, p0, Lcom/duoku/platform/view/a/c$2;->a:Lcom/duoku/platform/view/a/c;

    invoke-static {v0}, Lcom/duoku/platform/view/a/c;->h(Lcom/duoku/platform/view/a/c;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/duoku/platform/view/a/c$2;->a:Lcom/duoku/platform/view/a/c;

    invoke-static {v0}, Lcom/duoku/platform/view/a/c;->g(Lcom/duoku/platform/view/a/c;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/ui/a/j;

    invoke-virtual {v0}, Lcom/duoku/platform/ui/a/j;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v0, p0, Lcom/duoku/platform/view/a/c$2;->a:Lcom/duoku/platform/view/a/c;

    invoke-static {v0}, Lcom/duoku/platform/view/a/c;->i(Lcom/duoku/platform/view/a/c;)Landroid/widget/Button;

    move-result-object v1

    iget-object v0, p0, Lcom/duoku/platform/view/a/c$2;->a:Lcom/duoku/platform/view/a/c;

    invoke-static {v0}, Lcom/duoku/platform/view/a/c;->j(Lcom/duoku/platform/view/a/c;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/view/a/c;->c()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/ui/a/d;

    invoke-virtual {v0}, Lcom/duoku/platform/ui/a/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 276
    return-void
.end method
