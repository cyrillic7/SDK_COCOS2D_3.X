.class final Lcom/baidu/bdgame/sdk/obf/ay$27;
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
    .line 334
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ay$27;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 339
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay$27;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ay;->e(Lcom/baidu/bdgame/sdk/obf/ay;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cd;->k()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/bq;->a(Landroid/content/Context;I)V

    .line 340
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay$27;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ay;->e(Lcom/baidu/bdgame/sdk/obf/ay;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cd;->l()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/bs;->a(I)Lcom/baidu/bdgame/sdk/obf/bs;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/bv;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bs;)V

    .line 342
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ay$27$1;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ay$27;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ay;->e(Lcom/baidu/bdgame/sdk/obf/ay;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/cd;->k()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/baidu/bdgame/sdk/obf/ay$27$1;-><init>(Lcom/baidu/bdgame/sdk/obf/ay$27;Landroid/content/Context;)V

    .line 382
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ay$27;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ay;->e(Lcom/baidu/bdgame/sdk/obf/ay;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/cd;->a(Ljava/lang/String;)V

    .line 383
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ay$27;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ay;->e(Lcom/baidu/bdgame/sdk/obf/ay;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/cd;->k()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/baidu/bdgame/sdk/obf/bl;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bi;)Lcom/baidu/bdgame/sdk/obf/bk;

    .line 384
    return-void
.end method
