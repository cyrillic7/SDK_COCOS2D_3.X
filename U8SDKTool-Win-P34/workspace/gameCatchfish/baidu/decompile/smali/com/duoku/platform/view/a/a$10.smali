.class Lcom/duoku/platform/view/a/a$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/view/a/a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/a/a;


# direct methods
.method constructor <init>(Lcom/duoku/platform/view/a/a;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/view/a/a$10;->a:Lcom/duoku/platform/view/a/a;

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 7

    .prologue
    .line 356
    add-int v0, p2, p3

    .line 357
    if-ne v0, p4, :cond_3c

    .line 360
    iget-object v0, p0, Lcom/duoku/platform/view/a/a$10;->a:Lcom/duoku/platform/view/a/a;

    invoke-static {v0}, Lcom/duoku/platform/view/a/a;->o(Lcom/duoku/platform/view/a/a;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 362
    iget-object v0, p0, Lcom/duoku/platform/view/a/a$10;->a:Lcom/duoku/platform/view/a/a;

    invoke-static {v0}, Lcom/duoku/platform/view/a/a;->k(Lcom/duoku/platform/view/a/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_3c

    iget-object v0, p0, Lcom/duoku/platform/view/a/a$10;->a:Lcom/duoku/platform/view/a/a;

    invoke-static {v0}, Lcom/duoku/platform/view/a/a;->n(Lcom/duoku/platform/view/a/a;)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3c

    .line 364
    iget-object v0, p0, Lcom/duoku/platform/view/a/a$10;->a:Lcom/duoku/platform/view/a/a;

    invoke-static {v0}, Lcom/duoku/platform/view/a/a;->p(Lcom/duoku/platform/view/a/a;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 366
    iget-object v0, p0, Lcom/duoku/platform/view/a/a$10;->a:Lcom/duoku/platform/view/a/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/duoku/platform/view/a/a;->b(Lcom/duoku/platform/view/a/a;Z)V

    .line 367
    iget-object v0, p0, Lcom/duoku/platform/view/a/a$10;->a:Lcom/duoku/platform/view/a/a;

    iget-object v1, p0, Lcom/duoku/platform/view/a/a$10;->a:Lcom/duoku/platform/view/a/a;

    invoke-static {v1}, Lcom/duoku/platform/view/a/a;->n(Lcom/duoku/platform/view/a/a;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/duoku/platform/view/a/a;->b(Lcom/duoku/platform/view/a/a;I)V

    .line 377
    :cond_3c
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3

    .prologue
    .line 351
    return-void
.end method
