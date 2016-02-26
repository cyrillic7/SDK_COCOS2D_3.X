.class Lcom/duoku/platform/view/page/DKTabPageIndicator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/view/page/DKTabPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/page/DKTabPageIndicator;


# direct methods
.method constructor <init>(Lcom/duoku/platform/view/page/DKTabPageIndicator;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/view/page/DKTabPageIndicator$1;->a:Lcom/duoku/platform/view/page/DKTabPageIndicator;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    .prologue
    .line 61
    check-cast p1, Lcom/duoku/platform/view/page/DKTabPageIndicator$b;

    .line 62
    iget-object v0, p0, Lcom/duoku/platform/view/page/DKTabPageIndicator$1;->a:Lcom/duoku/platform/view/page/DKTabPageIndicator;

    invoke-static {v0}, Lcom/duoku/platform/view/page/DKTabPageIndicator;->a(Lcom/duoku/platform/view/page/DKTabPageIndicator;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 63
    invoke-virtual {p1}, Lcom/duoku/platform/view/page/DKTabPageIndicator$b;->a()I

    move-result v1

    .line 64
    iget-object v2, p0, Lcom/duoku/platform/view/page/DKTabPageIndicator$1;->a:Lcom/duoku/platform/view/page/DKTabPageIndicator;

    invoke-static {v2}, Lcom/duoku/platform/view/page/DKTabPageIndicator;->a(Lcom/duoku/platform/view/page/DKTabPageIndicator;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 66
    const/4 v2, 0x2

    if-ne v1, v2, :cond_34

    .line 68
    invoke-static {}, Lcom/duoku/platform/j/a;->a()Lcom/duoku/platform/j/a;

    move-result-object v2

    const-string v3, "8"

    invoke-virtual {v2, v3}, Lcom/duoku/platform/j/a;->a(Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/duoku/platform/j/a;->a()Lcom/duoku/platform/j/a;

    move-result-object v2

    iget-object v3, p0, Lcom/duoku/platform/view/page/DKTabPageIndicator$1;->a:Lcom/duoku/platform/view/page/DKTabPageIndicator;

    invoke-static {v3}, Lcom/duoku/platform/view/page/DKTabPageIndicator;->b(Lcom/duoku/platform/view/page/DKTabPageIndicator;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "cp_private_statistic"

    invoke-virtual {v2, v3, v4}, Lcom/duoku/platform/j/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 72
    :cond_34
    if-ne v0, v1, :cond_47

    iget-object v0, p0, Lcom/duoku/platform/view/page/DKTabPageIndicator$1;->a:Lcom/duoku/platform/view/page/DKTabPageIndicator;

    invoke-static {v0}, Lcom/duoku/platform/view/page/DKTabPageIndicator;->c(Lcom/duoku/platform/view/page/DKTabPageIndicator;)Lcom/duoku/platform/view/page/DKTabPageIndicator$a;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 74
    iget-object v0, p0, Lcom/duoku/platform/view/page/DKTabPageIndicator$1;->a:Lcom/duoku/platform/view/page/DKTabPageIndicator;

    invoke-static {v0}, Lcom/duoku/platform/view/page/DKTabPageIndicator;->c(Lcom/duoku/platform/view/page/DKTabPageIndicator;)Lcom/duoku/platform/view/page/DKTabPageIndicator$a;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/duoku/platform/view/page/DKTabPageIndicator$a;->a(I)V

    .line 76
    :cond_47
    return-void
.end method
