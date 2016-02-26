.class final Lcom/baidu/bdgame/sdk/obf/ay$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ay;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ay;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ay;)V
    .registers 2

    .prologue
    .line 194
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ay$18;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay$18;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ay;->g(Lcom/baidu/bdgame/sdk/obf/ay;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_31

    .line 199
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay$18;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ay;->f(Lcom/baidu/bdgame/sdk/obf/ay;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ay$18;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ay;->e(Lcom/baidu/bdgame/sdk/obf/ay;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/cd;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_icon_unfold_selector"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 202
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay$18;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ay;->g(Lcom/baidu/bdgame/sdk/obf/ay;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 211
    :goto_30
    return-void

    .line 204
    :cond_31
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay$18;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ay;->f(Lcom/baidu/bdgame/sdk/obf/ay;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ay$18;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ay;->e(Lcom/baidu/bdgame/sdk/obf/ay;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/cd;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_icon_fold_selector"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 207
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay$18;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ay;->g(Lcom/baidu/bdgame/sdk/obf/ay;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay$18;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ay;->h(Lcom/baidu/bdgame/sdk/obf/ay;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_30
.end method
