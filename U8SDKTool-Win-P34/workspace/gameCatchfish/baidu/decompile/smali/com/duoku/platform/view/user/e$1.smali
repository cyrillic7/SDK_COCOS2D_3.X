.class Lcom/duoku/platform/view/user/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/view/user/e;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/user/e;


# direct methods
.method constructor <init>(Lcom/duoku/platform/view/user/e;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/view/user/e$1;->a:Lcom/duoku/platform/view/user/e;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 7

    .prologue
    .line 155
    add-int v0, p2, p3

    .line 156
    if-ne v0, p4, :cond_2d

    .line 158
    iget-object v0, p0, Lcom/duoku/platform/view/user/e$1;->a:Lcom/duoku/platform/view/user/e;

    invoke-static {v0}, Lcom/duoku/platform/view/user/e;->n(Lcom/duoku/platform/view/user/e;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 160
    iget-object v0, p0, Lcom/duoku/platform/view/user/e$1;->a:Lcom/duoku/platform/view/user/e;

    invoke-static {v0}, Lcom/duoku/platform/view/user/e;->o(Lcom/duoku/platform/view/user/e;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 162
    iget-object v0, p0, Lcom/duoku/platform/view/user/e$1;->a:Lcom/duoku/platform/view/user/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/duoku/platform/view/user/e;->a(Lcom/duoku/platform/view/user/e;Z)V

    .line 163
    iget-object v0, p0, Lcom/duoku/platform/view/user/e$1;->a:Lcom/duoku/platform/view/user/e;

    invoke-static {v0}, Lcom/duoku/platform/view/user/e;->k(Lcom/duoku/platform/view/user/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_2d

    .line 165
    iget-object v0, p0, Lcom/duoku/platform/view/user/e$1;->a:Lcom/duoku/platform/view/user/e;

    invoke-static {v0}, Lcom/duoku/platform/view/user/e;->p(Lcom/duoku/platform/view/user/e;)V

    .line 171
    :cond_2d
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3

    .prologue
    .line 150
    return-void
.end method
