.class final Lcom/baidu/bdgame/sdk/obf/az$5$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/az$5;->onClick(Landroid/view/View;)V
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
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/az$5;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/az$5;)V
    .registers 2

    .prologue
    .line 253
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/az$5$2;->a:Lcom/baidu/bdgame/sdk/obf/az$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 8

    .prologue
    .line 258
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az$5$2;->a:Lcom/baidu/bdgame/sdk/obf/az$5;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/az$5;->a:Lcom/baidu/bdgame/sdk/obf/az;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/az;->e(Lcom/baidu/bdgame/sdk/obf/az;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cd;->m()V

    .line 259
    if-nez p1, :cond_31

    .line 260
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az$5$2;->a:Lcom/baidu/bdgame/sdk/obf/az$5;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/az$5;->a:Lcom/baidu/bdgame/sdk/obf/az;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/az;->e(Lcom/baidu/bdgame/sdk/obf/az;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cd;->k()Landroid/content/Context;

    move-result-object v0

    .line 261
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/az$5$2;->a:Lcom/baidu/bdgame/sdk/obf/az$5;

    iget-object v1, v1, Lcom/baidu/bdgame/sdk/obf/az$5;->a:Lcom/baidu/bdgame/sdk/obf/az;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/az;->e(Lcom/baidu/bdgame/sdk/obf/az;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "bdp_passport_login"

    invoke-static {v0, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/baidu/bdgame/sdk/obf/cd;->b(ILjava/lang/String;Landroid/os/Parcelable;)V

    .line 273
    :goto_30
    return-void

    .line 262
    :cond_31
    const v0, 0x8534

    if-ne p1, v0, :cond_51

    instance-of v0, p3, Lcom/baidu/bdgame/sdk/obf/ag;

    if-eqz v0, :cond_51

    .line 264
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/mr;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/az$5$2;->a:Lcom/baidu/bdgame/sdk/obf/az$5;

    iget-object v1, v1, Lcom/baidu/bdgame/sdk/obf/az$5;->a:Lcom/baidu/bdgame/sdk/obf/az;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/az;->e(Lcom/baidu/bdgame/sdk/obf/az;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/cd;->i()Lcom/baidu/bdgame/sdk/obf/ce;

    move-result-object v1

    check-cast p3, Lcom/baidu/bdgame/sdk/obf/ag;

    invoke-direct {v0, v1, p3}, Lcom/baidu/bdgame/sdk/obf/mr;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;Lcom/baidu/bdgame/sdk/obf/ag;)V

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/mr;->a()V

    goto :goto_30

    .line 266
    :cond_51
    const v0, 0x8535

    if-ne p1, v0, :cond_71

    instance-of v0, p3, Lcom/baidu/bdgame/sdk/obf/ag;

    if-eqz v0, :cond_71

    .line 268
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/mr;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/az$5$2;->a:Lcom/baidu/bdgame/sdk/obf/az$5;

    iget-object v1, v1, Lcom/baidu/bdgame/sdk/obf/az$5;->a:Lcom/baidu/bdgame/sdk/obf/az;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/az;->e(Lcom/baidu/bdgame/sdk/obf/az;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/cd;->i()Lcom/baidu/bdgame/sdk/obf/ce;

    move-result-object v1

    check-cast p3, Lcom/baidu/bdgame/sdk/obf/ag;

    invoke-direct {v0, v1, p3}, Lcom/baidu/bdgame/sdk/obf/mr;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;Lcom/baidu/bdgame/sdk/obf/ag;)V

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/mr;->c()V

    goto :goto_30

    .line 271
    :cond_71
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az$5$2;->a:Lcom/baidu/bdgame/sdk/obf/az$5;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/az$5;->a:Lcom/baidu/bdgame/sdk/obf/az;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/az;->e(Lcom/baidu/bdgame/sdk/obf/az;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cd;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/baidu/bdgame/sdk/obf/ln;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_30
.end method
