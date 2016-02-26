.class Lcom/duoku/platform/view/user/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/view/user/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/user/b;


# direct methods
.method constructor <init>(Lcom/duoku/platform/view/user/b;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/view/user/b$2;->a:Lcom/duoku/platform/view/user/b;

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 7

    .prologue
    .line 217
    add-int v0, p2, p3

    .line 218
    if-ne v0, p4, :cond_33

    .line 220
    iget-object v0, p0, Lcom/duoku/platform/view/user/b$2;->a:Lcom/duoku/platform/view/user/b;

    invoke-static {v0}, Lcom/duoku/platform/view/user/b;->p(Lcom/duoku/platform/view/user/b;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 222
    iget-object v0, p0, Lcom/duoku/platform/view/user/b$2;->a:Lcom/duoku/platform/view/user/b;

    invoke-static {v0}, Lcom/duoku/platform/view/user/b;->j(Lcom/duoku/platform/view/user/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_33

    .line 224
    iget-object v0, p0, Lcom/duoku/platform/view/user/b$2;->a:Lcom/duoku/platform/view/user/b;

    invoke-static {v0}, Lcom/duoku/platform/view/user/b;->q(Lcom/duoku/platform/view/user/b;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 226
    iget-object v0, p0, Lcom/duoku/platform/view/user/b$2;->a:Lcom/duoku/platform/view/user/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/duoku/platform/view/user/b;->a(Lcom/duoku/platform/view/user/b;Z)V

    .line 227
    iget-object v0, p0, Lcom/duoku/platform/view/user/b$2;->a:Lcom/duoku/platform/view/user/b;

    iget-object v1, p0, Lcom/duoku/platform/view/user/b$2;->a:Lcom/duoku/platform/view/user/b;

    invoke-static {v1}, Lcom/duoku/platform/view/user/b;->g(Lcom/duoku/platform/view/user/b;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/duoku/platform/view/user/b;->b(Lcom/duoku/platform/view/user/b;I)V

    .line 237
    :cond_33
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3

    .prologue
    .line 212
    return-void
.end method
