.class Lcom/duoku/platform/view/a/f$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/view/a/f;
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
.field final synthetic a:Lcom/duoku/platform/view/a/f;


# direct methods
.method constructor <init>(Lcom/duoku/platform/view/a/f;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/view/a/f$4;->a:Lcom/duoku/platform/view/a/f;

    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
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
    .line 508
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$4;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0, p3}, Lcom/duoku/platform/view/a/f;->a(Lcom/duoku/platform/view/a/f;I)V

    .line 509
    check-cast p2, Landroid/widget/LinearLayout;

    .line 510
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/duoku/platform/view/a/f$4;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->d(Lcom/duoku/platform/view/a/f;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/ui/a/g;

    invoke-virtual {v0}, Lcom/duoku/platform/ui/a/g;->c()I

    move-result v0

    if-ne v1, v0, :cond_97

    iget-object v0, p0, Lcom/duoku/platform/view/a/f$4;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->e(Lcom/duoku/platform/view/a/f;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "dk_message_operation"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    move v1, v0

    .line 512
    :goto_27
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$4;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->e(Lcom/duoku/platform/view/a/f;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "dk_message_item_iv"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 514
    iget-object v1, p0, Lcom/duoku/platform/view/a/f$4;->a:Lcom/duoku/platform/view/a/f;

    iget-object v0, p0, Lcom/duoku/platform/view/a/f$4;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->d(Lcom/duoku/platform/view/a/f;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/ui/a/g;

    invoke-static {v1, v0}, Lcom/duoku/platform/view/a/f;->a(Lcom/duoku/platform/view/a/f;Lcom/duoku/platform/ui/a/g;)V

    .line 515
    const-string v1, "1"

    iget-object v0, p0, Lcom/duoku/platform/view/a/f$4;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->d(Lcom/duoku/platform/view/a/f;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/ui/a/g;

    invoke-virtual {v0}, Lcom/duoku/platform/ui/a/g;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 517
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$4;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->f(Lcom/duoku/platform/view/a/f;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/duoku/platform/view/a/f;->b(Lcom/duoku/platform/view/a/f;I)V

    .line 518
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$4;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->d(Lcom/duoku/platform/view/a/f;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/ui/a/g;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/ui/a/g;->e(Ljava/lang/String;)V

    .line 520
    :cond_81
    iget-object v1, p0, Lcom/duoku/platform/view/a/f$4;->a:Lcom/duoku/platform/view/a/f;

    iget-object v0, p0, Lcom/duoku/platform/view/a/f$4;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->d(Lcom/duoku/platform/view/a/f;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/ui/a/g;

    invoke-virtual {v0}, Lcom/duoku/platform/ui/a/g;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/duoku/platform/view/a/f;->a(Lcom/duoku/platform/view/a/f;Ljava/lang/String;)V

    .line 521
    return-void

    .line 511
    :cond_97
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$4;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->e(Lcom/duoku/platform/view/a/f;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "dk_message_system"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    move v1, v0

    goto :goto_27
.end method
