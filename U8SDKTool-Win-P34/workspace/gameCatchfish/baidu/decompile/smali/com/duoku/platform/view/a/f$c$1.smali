.class Lcom/duoku/platform/view/a/f$c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/view/a/f$c;->a(ILcom/duoku/platform/h/a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/a/f$c;


# direct methods
.method constructor <init>(Lcom/duoku/platform/view/a/f$c;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/view/a/f$c$1;->a:Lcom/duoku/platform/view/a/f$c;

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 7

    .prologue
    .line 333
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$c$1;->a:Lcom/duoku/platform/view/a/f$c;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f$c;->a(Lcom/duoku/platform/view/a/f$c;)Lcom/duoku/platform/view/a/f;

    move-result-object v0

    add-int v1, p2, p3

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/duoku/platform/view/a/f;->d(Lcom/duoku/platform/view/a/f;I)V

    .line 334
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 323
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$c$1;->a:Lcom/duoku/platform/view/a/f$c;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f$c;->a(Lcom/duoku/platform/view/a/f$c;)Lcom/duoku/platform/view/a/f;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->l(Lcom/duoku/platform/view/a/f;)I

    move-result v0

    iget-object v1, p0, Lcom/duoku/platform/view/a/f$c$1;->a:Lcom/duoku/platform/view/a/f$c;

    invoke-static {v1}, Lcom/duoku/platform/view/a/f$c;->a(Lcom/duoku/platform/view/a/f$c;)Lcom/duoku/platform/view/a/f;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/view/a/f;->m(Lcom/duoku/platform/view/a/f;)I

    move-result v1

    if-ne v0, v1, :cond_41

    if-nez p2, :cond_41

    iget-object v0, p0, Lcom/duoku/platform/view/a/f$c$1;->a:Lcom/duoku/platform/view/a/f$c;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f$c;->a(Lcom/duoku/platform/view/a/f$c;)Lcom/duoku/platform/view/a/f;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->m(Lcom/duoku/platform/view/a/f;)I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_41

    .line 325
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$c$1;->a:Lcom/duoku/platform/view/a/f$c;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f$c;->a(Lcom/duoku/platform/view/a/f$c;)Lcom/duoku/platform/view/a/f;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->b(Lcom/duoku/platform/view/a/f;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$c$1;->a:Lcom/duoku/platform/view/a/f$c;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f$c;->a(Lcom/duoku/platform/view/a/f$c;)Lcom/duoku/platform/view/a/f;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->k(Lcom/duoku/platform/view/a/f;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 328
    :cond_41
    return-void
.end method
