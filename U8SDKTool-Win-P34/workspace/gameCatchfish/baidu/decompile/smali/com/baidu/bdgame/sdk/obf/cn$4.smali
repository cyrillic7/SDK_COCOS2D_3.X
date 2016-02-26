.class final Lcom/baidu/bdgame/sdk/obf/cn$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/cn;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/bdgame/sdk/obf/n",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/cn;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/cn;)V
    .registers 2

    .prologue
    .line 670
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/cn$4;->a:Lcom/baidu/bdgame/sdk/obf/cn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 670
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/cn$4;->a(ILjava/lang/String;Ljava/lang/Void;)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/Void;)V
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 675
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn$4;->a:Lcom/baidu/bdgame/sdk/obf/cn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cn;->O()V

    .line 676
    if-nez p1, :cond_24

    .line 677
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn$4;->a:Lcom/baidu/bdgame/sdk/obf/cn;

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cn;->a(Lcom/baidu/bdgame/sdk/obf/cn;Z)Z

    .line 678
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn$4;->a:Lcom/baidu/bdgame/sdk/obf/cn;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cn;->b(Lcom/baidu/bdgame/sdk/obf/cn;)Lcom/baidu/bdgame/sdk/obf/cn$b;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 679
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn$4;->a:Lcom/baidu/bdgame/sdk/obf/cn;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cn;->b(Lcom/baidu/bdgame/sdk/obf/cn;)Lcom/baidu/bdgame/sdk/obf/cn$b;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cn$b;->a(Z)V

    .line 695
    :cond_1e
    :goto_1e
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn$4;->a:Lcom/baidu/bdgame/sdk/obf/cn;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cn;->d(Lcom/baidu/bdgame/sdk/obf/cn;)V

    .line 696
    return-void

    .line 682
    :cond_24
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn$4;->a:Lcom/baidu/bdgame/sdk/obf/cn;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cn;->b(Lcom/baidu/bdgame/sdk/obf/cn;)Lcom/baidu/bdgame/sdk/obf/cn$b;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 683
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn$4;->a:Lcom/baidu/bdgame/sdk/obf/cn;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cn;->b(Lcom/baidu/bdgame/sdk/obf/cn;)Lcom/baidu/bdgame/sdk/obf/cn$b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cn$b;->a(Z)V

    .line 685
    :cond_36
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn$4;->a:Lcom/baidu/bdgame/sdk/obf/cn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cn;->M()V

    .line 686
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/jh;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 687
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn$4;->a:Lcom/baidu/bdgame/sdk/obf/cn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cn;->k()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_paycenter_tips_pwd_error"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/jf;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1e

    .line 690
    :cond_4d
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn$4;->a:Lcom/baidu/bdgame/sdk/obf/cn;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cn;->c(Lcom/baidu/bdgame/sdk/obf/cn;)Lcom/baidu/bdgame/sdk/obf/ez;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ez;->a_()V

    .line 691
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn$4;->a:Lcom/baidu/bdgame/sdk/obf/cn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cn;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jf;->c(Landroid/content/Context;)V

    goto :goto_1e
.end method
