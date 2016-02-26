.class Lcom/duoku/platform/view/a/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/view/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/a/c;


# direct methods
.method constructor <init>(Lcom/duoku/platform/view/a/c;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/view/a/c$1;->a:Lcom/duoku/platform/view/a/c;

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 230
    iget-object v0, p0, Lcom/duoku/platform/view/a/c$1;->a:Lcom/duoku/platform/view/a/c;

    invoke-static {v0}, Lcom/duoku/platform/view/a/c;->a(Lcom/duoku/platform/view/a/c;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->isShown()Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/duoku/platform/view/a/c$1;->a:Lcom/duoku/platform/view/a/c;

    invoke-static {v0}, Lcom/duoku/platform/view/a/c;->a(Lcom/duoku/platform/view/a/c;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 232
    iget-object v0, p0, Lcom/duoku/platform/view/a/c$1;->a:Lcom/duoku/platform/view/a/c;

    invoke-static {v0, v2}, Lcom/duoku/platform/view/a/c;->a(Lcom/duoku/platform/view/a/c;Z)V

    .line 233
    iget-object v0, p0, Lcom/duoku/platform/view/a/c$1;->a:Lcom/duoku/platform/view/a/c;

    invoke-static {v0}, Lcom/duoku/platform/view/a/c;->b(Lcom/duoku/platform/view/a/c;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/duoku/platform/view/a/c$1;->a:Lcom/duoku/platform/view/a/c;

    invoke-static {v0}, Lcom/duoku/platform/view/a/c;->c(Lcom/duoku/platform/view/a/c;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 238
    :cond_2e
    iget-object v0, p0, Lcom/duoku/platform/view/a/c$1;->a:Lcom/duoku/platform/view/a/c;

    invoke-static {v0}, Lcom/duoku/platform/view/a/c;->d(Lcom/duoku/platform/view/a/c;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/view/a/c;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 239
    iget-object v1, p0, Lcom/duoku/platform/view/a/c$1;->a:Lcom/duoku/platform/view/a/c;

    iget-object v1, v1, Lcom/duoku/platform/view/a/c;->a:Landroid/content/Context;

    const-string v2, "dk_btn_customer_type"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 240
    iget-object v1, p0, Lcom/duoku/platform/view/a/c$1;->a:Lcom/duoku/platform/view/a/c;

    iget-object v1, v1, Lcom/duoku/platform/view/a/c;->a:Landroid/content/Context;

    const-string v2, "dk_bg_kubi_engouth"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 242
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/duoku/platform/view/a/c;->a(I)V

    .line 243
    iget-object v0, p0, Lcom/duoku/platform/view/a/c$1;->a:Lcom/duoku/platform/view/a/c;

    iget-object v0, v0, Lcom/duoku/platform/view/a/c;->a:Landroid/content/Context;

    const-string v1, "dk_bg_other_pay_press"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 245
    iget-object v0, p0, Lcom/duoku/platform/view/a/c$1;->a:Lcom/duoku/platform/view/a/c;

    invoke-static {}, Lcom/duoku/platform/view/a/c;->c()I

    move-result v1

    invoke-static {v0, v1}, Lcom/duoku/platform/view/a/c;->a(Lcom/duoku/platform/view/a/c;I)V

    .line 246
    return-void
.end method
