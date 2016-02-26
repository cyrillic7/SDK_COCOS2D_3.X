.class Lcom/duoku/platform/view/a/e$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/view/a/e$7;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/a/e$7;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/duoku/platform/view/a/e$7;I)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/view/a/e$7$1;->a:Lcom/duoku/platform/view/a/e$7;

    iput p2, p0, Lcom/duoku/platform/view/a/e$7$1;->b:I

    .line 562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 568
    iget-object v0, p0, Lcom/duoku/platform/view/a/e$7$1;->a:Lcom/duoku/platform/view/a/e$7;

    invoke-static {v0}, Lcom/duoku/platform/view/a/e$7;->a(Lcom/duoku/platform/view/a/e$7;)Lcom/duoku/platform/view/a/e;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/view/a/e;->l(Lcom/duoku/platform/view/a/e;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/duoku/platform/view/a/e$7$1;->b:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/ui/a/e;

    invoke-virtual {v0}, Lcom/duoku/platform/ui/a/e;->a()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 570
    iget-object v0, p0, Lcom/duoku/platform/view/a/e$7$1;->a:Lcom/duoku/platform/view/a/e$7;

    invoke-static {v0}, Lcom/duoku/platform/view/a/e$7;->a(Lcom/duoku/platform/view/a/e$7;)Lcom/duoku/platform/view/a/e;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/view/a/e;->l(Lcom/duoku/platform/view/a/e;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/duoku/platform/view/a/e$7$1;->b:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/ui/a/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/ui/a/e;->a(Z)V

    .line 577
    :goto_2e
    iget-object v0, p0, Lcom/duoku/platform/view/a/e$7$1;->a:Lcom/duoku/platform/view/a/e$7;

    invoke-static {v0}, Lcom/duoku/platform/view/a/e$7;->a(Lcom/duoku/platform/view/a/e$7;)Lcom/duoku/platform/view/a/e;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/view/a/e;->m(Lcom/duoku/platform/view/a/e;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 578
    return-void

    .line 574
    :cond_3c
    iget-object v0, p0, Lcom/duoku/platform/view/a/e$7$1;->a:Lcom/duoku/platform/view/a/e$7;

    invoke-static {v0}, Lcom/duoku/platform/view/a/e$7;->a(Lcom/duoku/platform/view/a/e$7;)Lcom/duoku/platform/view/a/e;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/view/a/e;->l(Lcom/duoku/platform/view/a/e;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/duoku/platform/view/a/e$7$1;->b:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/ui/a/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/duoku/platform/ui/a/e;->a(Z)V

    goto :goto_2e
.end method
