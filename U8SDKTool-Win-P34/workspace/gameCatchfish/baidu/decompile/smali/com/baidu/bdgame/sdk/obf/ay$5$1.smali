.class final Lcom/baidu/bdgame/sdk/obf/ay$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ay$5;->a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/r;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/r;

.field final synthetic b:Lcom/baidu/bdgame/sdk/obf/ay$5;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ay$5;Lcom/baidu/bdgame/sdk/obf/r;)V
    .registers 3

    .prologue
    .line 484
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ay$5$1;->b:Lcom/baidu/bdgame/sdk/obf/ay$5;

    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/ay$5$1;->a:Lcom/baidu/bdgame/sdk/obf/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 489
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay$5$1;->b:Lcom/baidu/bdgame/sdk/obf/ay$5;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ay$5;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ay;->e(Lcom/baidu/bdgame/sdk/obf/ay;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cd;->k()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/bq;->a(Landroid/content/Context;I)V

    .line 490
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay$5$1;->b:Lcom/baidu/bdgame/sdk/obf/ay$5;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ay$5;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ay;->e(Lcom/baidu/bdgame/sdk/obf/ay;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cd;->l()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x7

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/bs;->a(I)Lcom/baidu/bdgame/sdk/obf/bs;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/bv;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bs;)V

    .line 492
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay$5$1;->b:Lcom/baidu/bdgame/sdk/obf/ay$5;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ay$5;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ay;->e(Lcom/baidu/bdgame/sdk/obf/ay;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ay$5$1;->b:Lcom/baidu/bdgame/sdk/obf/ay$5;

    iget-object v1, v1, Lcom/baidu/bdgame/sdk/obf/ay$5;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ay;->e(Lcom/baidu/bdgame/sdk/obf/ay;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/cd;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_dialog_loading_login"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cd;->c(I)V

    .line 493
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay$5$1;->b:Lcom/baidu/bdgame/sdk/obf/ay$5;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ay$5;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ay;->e(Lcom/baidu/bdgame/sdk/obf/ay;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cd;->k()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ay$5$1;->a:Lcom/baidu/bdgame/sdk/obf/r;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/r;->i()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ay$5$1;->a:Lcom/baidu/bdgame/sdk/obf/r;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/r;->a()Lcom/baidu/bdgame/sdk/obf/s;

    move-result-object v2

    new-instance v3, Lcom/baidu/bdgame/sdk/obf/ay$5$1$1;

    invoke-direct {v3, p0}, Lcom/baidu/bdgame/sdk/obf/ay$5$1$1;-><init>(Lcom/baidu/bdgame/sdk/obf/ay$5$1;)V

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/bdgame/sdk/obf/bl;->a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/s;Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/bk;

    .line 512
    return-void
.end method
