.class Lcom/duoku/platform/view/a/h$1;
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
    iput-object p1, p0, Lcom/duoku/platform/view/a/h$1;->a:Lcom/duoku/platform/view/a/h;

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 309
    iget-object v0, p0, Lcom/duoku/platform/view/a/h$1;->a:Lcom/duoku/platform/view/a/h;

    invoke-static {v0}, Lcom/duoku/platform/view/a/h;->a(Lcom/duoku/platform/view/a/h;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/a/h$1;->a:Lcom/duoku/platform/view/a/h;

    invoke-static {v1}, Lcom/duoku/platform/view/a/h;->b(Lcom/duoku/platform/view/a/h;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 310
    iget-object v1, p0, Lcom/duoku/platform/view/a/h$1;->a:Lcom/duoku/platform/view/a/h;

    iget-object v1, v1, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    const-string v2, "dk_btn_customer_type"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 311
    iget-object v1, p0, Lcom/duoku/platform/view/a/h$1;->a:Lcom/duoku/platform/view/a/h;

    iget-object v1, v1, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    const-string v2, "dk_bg_kubi_engouth"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 314
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 315
    iget-object v2, p0, Lcom/duoku/platform/view/a/h$1;->a:Lcom/duoku/platform/view/a/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/duoku/platform/view/a/h;->a(Lcom/duoku/platform/view/a/h;Ljava/lang/String;)V

    .line 316
    iget-object v1, p0, Lcom/duoku/platform/view/a/h$1;->a:Lcom/duoku/platform/view/a/h;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/duoku/platform/view/a/h;->a(Lcom/duoku/platform/view/a/h;I)V

    .line 317
    iget-object v0, p0, Lcom/duoku/platform/view/a/h$1;->a:Lcom/duoku/platform/view/a/h;

    iget-object v0, v0, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    const-string v1, "dk_bg_other_pay_press"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 319
    iget-object v0, p0, Lcom/duoku/platform/view/a/h$1;->a:Lcom/duoku/platform/view/a/h;

    iget-object v1, p0, Lcom/duoku/platform/view/a/h$1;->a:Lcom/duoku/platform/view/a/h;

    invoke-static {v1}, Lcom/duoku/platform/view/a/h;->c(Lcom/duoku/platform/view/a/h;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/view/a/h;->b(Lcom/duoku/platform/view/a/h;Ljava/lang/String;)V

    .line 320
    return-void
.end method
