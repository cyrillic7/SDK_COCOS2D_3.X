.class final Lcom/baidu/bdgame/sdk/obf/ay$5$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ay$5$1;->onClick(Landroid/view/View;)V
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ay$5$1;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ay$5$1;)V
    .registers 2

    .prologue
    .line 493
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ay$5$1$1;->a:Lcom/baidu/bdgame/sdk/obf/ay$5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 497
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay$5$1$1;->a:Lcom/baidu/bdgame/sdk/obf/ay$5$1;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ay$5$1;->b:Lcom/baidu/bdgame/sdk/obf/ay$5;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ay$5;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ay;->e(Lcom/baidu/bdgame/sdk/obf/ay;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cd;->m()V

    .line 498
    if-nez p1, :cond_37

    .line 499
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay$5$1$1;->a:Lcom/baidu/bdgame/sdk/obf/ay$5$1;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ay$5$1;->b:Lcom/baidu/bdgame/sdk/obf/ay$5;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ay$5;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ay;->e(Lcom/baidu/bdgame/sdk/obf/ay;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cd;->k()Landroid/content/Context;

    move-result-object v0

    .line 500
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ay$5$1$1;->a:Lcom/baidu/bdgame/sdk/obf/ay$5$1;

    iget-object v1, v1, Lcom/baidu/bdgame/sdk/obf/ay$5$1;->b:Lcom/baidu/bdgame/sdk/obf/ay$5;

    iget-object v1, v1, Lcom/baidu/bdgame/sdk/obf/ay$5;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ay;->e(Lcom/baidu/bdgame/sdk/obf/ay;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "bdp_passport_login"

    invoke-static {v0, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0, v4}, Lcom/baidu/bdgame/sdk/obf/cd;->b(ILjava/lang/String;Landroid/os/Parcelable;)V

    .line 510
    :goto_36
    return-void

    .line 502
    :cond_37
    const v0, 0x8ca5

    if-ne p1, v0, :cond_57

    .line 503
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay$5$1$1;->a:Lcom/baidu/bdgame/sdk/obf/ay$5$1;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ay$5$1;->b:Lcom/baidu/bdgame/sdk/obf/ay$5;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ay$5;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ay;->r(Lcom/baidu/bdgame/sdk/obf/ay;)V

    .line 508
    :cond_45
    :goto_45
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay$5$1$1;->a:Lcom/baidu/bdgame/sdk/obf/ay$5$1;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ay$5$1;->b:Lcom/baidu/bdgame/sdk/obf/ay$5;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ay$5;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ay;->e(Lcom/baidu/bdgame/sdk/obf/ay;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cd;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/baidu/bdgame/sdk/obf/ln;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_36

    .line 504
    :cond_57
    const/4 v0, -0x1

    if-eq p1, v0, :cond_45

    .line 505
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay$5$1$1;->a:Lcom/baidu/bdgame/sdk/obf/ay$5$1;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ay$5$1;->b:Lcom/baidu/bdgame/sdk/obf/ay$5;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ay$5;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ay;->e(Lcom/baidu/bdgame/sdk/obf/ay;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v0

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/mj;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ay$5$1$1;->a:Lcom/baidu/bdgame/sdk/obf/ay$5$1;

    iget-object v2, v2, Lcom/baidu/bdgame/sdk/obf/ay$5$1;->b:Lcom/baidu/bdgame/sdk/obf/ay$5;

    iget-object v2, v2, Lcom/baidu/bdgame/sdk/obf/ay$5;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v2}, Lcom/baidu/bdgame/sdk/obf/ay;->e(Lcom/baidu/bdgame/sdk/obf/ay;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/cd;->i()Lcom/baidu/bdgame/sdk/obf/ce;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/baidu/bdgame/sdk/obf/mj;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;)V

    invoke-virtual {v0, v1, v4}, Lcom/baidu/bdgame/sdk/obf/cd;->a(Lcom/baidu/bdgame/sdk/obf/cd;Landroid/os/Bundle;)V

    goto :goto_45
.end method
