.class Lcom/duoku/platform/view/user/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/view/user/c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/user/c;


# direct methods
.method constructor <init>(Lcom/duoku/platform/view/user/c;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/view/user/c$2;->a:Lcom/duoku/platform/view/user/c;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 8

    .prologue
    const/16 v2, 0x14

    .line 192
    add-int v0, p2, p3

    .line 193
    if-ne v0, p4, :cond_36

    .line 195
    iget-object v0, p0, Lcom/duoku/platform/view/user/c$2;->a:Lcom/duoku/platform/view/user/c;

    invoke-static {v0}, Lcom/duoku/platform/view/user/c;->q(Lcom/duoku/platform/view/user/c;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 197
    iget-object v0, p0, Lcom/duoku/platform/view/user/c$2;->a:Lcom/duoku/platform/view/user/c;

    invoke-static {v0}, Lcom/duoku/platform/view/user/c;->r(Lcom/duoku/platform/view/user/c;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 199
    iget-object v0, p0, Lcom/duoku/platform/view/user/c$2;->a:Lcom/duoku/platform/view/user/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/duoku/platform/view/user/c;->a(Lcom/duoku/platform/view/user/c;Z)V

    .line 200
    iget-object v0, p0, Lcom/duoku/platform/view/user/c$2;->a:Lcom/duoku/platform/view/user/c;

    invoke-static {v0}, Lcom/duoku/platform/view/user/c;->e(Lcom/duoku/platform/view/user/c;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_37

    .line 202
    iget-object v0, p0, Lcom/duoku/platform/view/user/c$2;->a:Lcom/duoku/platform/view/user/c;

    invoke-static {v0}, Lcom/duoku/platform/view/user/c;->h(Lcom/duoku/platform/view/user/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v2, :cond_36

    .line 204
    iget-object v0, p0, Lcom/duoku/platform/view/user/c$2;->a:Lcom/duoku/platform/view/user/c;

    invoke-static {v0}, Lcom/duoku/platform/view/user/c;->s(Lcom/duoku/platform/view/user/c;)V

    .line 241
    :cond_36
    :goto_36
    return-void

    .line 212
    :cond_37
    iget-object v0, p0, Lcom/duoku/platform/view/user/c$2;->a:Lcom/duoku/platform/view/user/c;

    invoke-static {v0}, Lcom/duoku/platform/view/user/c;->e(Lcom/duoku/platform/view/user/c;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_52

    .line 214
    iget-object v0, p0, Lcom/duoku/platform/view/user/c$2;->a:Lcom/duoku/platform/view/user/c;

    invoke-static {v0}, Lcom/duoku/platform/view/user/c;->k(Lcom/duoku/platform/view/user/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v2, :cond_36

    .line 216
    iget-object v0, p0, Lcom/duoku/platform/view/user/c$2;->a:Lcom/duoku/platform/view/user/c;

    invoke-static {v0}, Lcom/duoku/platform/view/user/c;->s(Lcom/duoku/platform/view/user/c;)V

    goto :goto_36

    .line 224
    :cond_52
    iget-object v0, p0, Lcom/duoku/platform/view/user/c$2;->a:Lcom/duoku/platform/view/user/c;

    invoke-static {v0}, Lcom/duoku/platform/view/user/c;->e(Lcom/duoku/platform/view/user/c;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_36

    .line 226
    iget-object v0, p0, Lcom/duoku/platform/view/user/c$2;->a:Lcom/duoku/platform/view/user/c;

    invoke-static {v0}, Lcom/duoku/platform/view/user/c;->m(Lcom/duoku/platform/view/user/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v2, :cond_36

    .line 228
    iget-object v0, p0, Lcom/duoku/platform/view/user/c$2;->a:Lcom/duoku/platform/view/user/c;

    invoke-static {v0}, Lcom/duoku/platform/view/user/c;->s(Lcom/duoku/platform/view/user/c;)V

    goto :goto_36
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3

    .prologue
    .line 187
    return-void
.end method
