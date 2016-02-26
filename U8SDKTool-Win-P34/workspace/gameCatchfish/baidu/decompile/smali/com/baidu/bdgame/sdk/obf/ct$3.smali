.class final Lcom/baidu/bdgame/sdk/obf/ct$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ct;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ct;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ct;)V
    .registers 2

    .prologue
    .line 265
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ct$3;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
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
    .line 271
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct$3;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->d(Lcom/baidu/bdgame/sdk/obf/ct;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct$3;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->d(Lcom/baidu/bdgame/sdk/obf/ct;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 278
    :cond_14
    :goto_14
    return-void

    .line 274
    :cond_15
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ct$3;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct$3;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->d(Lcom/baidu/bdgame/sdk/obf/ct;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/ic;

    invoke-static {v1, v0}, Lcom/baidu/bdgame/sdk/obf/ct;->a(Lcom/baidu/bdgame/sdk/obf/ct;Lcom/baidu/bdgame/sdk/obf/ic;)Lcom/baidu/bdgame/sdk/obf/ic;

    .line 275
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct$3;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->e(Lcom/baidu/bdgame/sdk/obf/ct;)V

    .line 276
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct$3;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->a(Lcom/baidu/bdgame/sdk/obf/ct;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_14
.end method
