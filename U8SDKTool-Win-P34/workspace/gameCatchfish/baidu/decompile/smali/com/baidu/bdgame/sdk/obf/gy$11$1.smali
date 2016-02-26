.class final Lcom/baidu/bdgame/sdk/obf/gy$11$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/gy$11;->onClick(Landroid/view/View;)V
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
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/gy$11;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/gy$11;)V
    .registers 2

    .prologue
    .line 162
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/gy$11$1;->a:Lcom/baidu/bdgame/sdk/obf/gy$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 162
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/gy$11$1;->a(ILjava/lang/String;Ljava/lang/Void;)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/Void;)V
    .registers 7

    .prologue
    .line 166
    if-nez p1, :cond_2a

    .line 167
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gy$11$1;->a:Lcom/baidu/bdgame/sdk/obf/gy$11;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/gy$11;->a:Lcom/baidu/bdgame/sdk/obf/gy;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/gy;->e(Lcom/baidu/bdgame/sdk/obf/gy;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gy$11$1;->a:Lcom/baidu/bdgame/sdk/obf/gy$11;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/gy$11;->a:Lcom/baidu/bdgame/sdk/obf/gy;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/gy$a;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/gy$11$1;->a:Lcom/baidu/bdgame/sdk/obf/gy$11;

    iget-object v2, v2, Lcom/baidu/bdgame/sdk/obf/gy$11;->a:Lcom/baidu/bdgame/sdk/obf/gy;

    invoke-direct {v1, v2}, Lcom/baidu/bdgame/sdk/obf/gy$a;-><init>(Lcom/baidu/bdgame/sdk/obf/gy;)V

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/gy;->a(Lcom/baidu/bdgame/sdk/obf/gy;Lcom/baidu/bdgame/sdk/obf/gy$a;)Lcom/baidu/bdgame/sdk/obf/gy$a;

    .line 169
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gy$11$1;->a:Lcom/baidu/bdgame/sdk/obf/gy$11;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/gy$11;->a:Lcom/baidu/bdgame/sdk/obf/gy;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/gy;->d(Lcom/baidu/bdgame/sdk/obf/gy;)Lcom/baidu/bdgame/sdk/obf/gy$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gy$a;->a()V

    .line 175
    :goto_29
    return-void

    .line 171
    :cond_2a
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gy$11$1;->a:Lcom/baidu/bdgame/sdk/obf/gy$11;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/gy$11;->a:Lcom/baidu/bdgame/sdk/obf/gy;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/gy;->f(Lcom/baidu/bdgame/sdk/obf/gy;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 172
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gy$11$1;->a:Lcom/baidu/bdgame/sdk/obf/gy$11;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/gy$11;->a:Lcom/baidu/bdgame/sdk/obf/gy;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/gy;->f(Lcom/baidu/bdgame/sdk/obf/gy;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gy$11$1;->a:Lcom/baidu/bdgame/sdk/obf/gy$11;

    iget-object v1, v1, Lcom/baidu/bdgame/sdk/obf/gy$11;->a:Lcom/baidu/bdgame/sdk/obf/gy;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/gy;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_bind_phone_verifycode_get"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 173
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gy$11$1;->a:Lcom/baidu/bdgame/sdk/obf/gy$11;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/gy$11;->a:Lcom/baidu/bdgame/sdk/obf/gy;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gy;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/baidu/bdgame/sdk/obf/ln;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_29
.end method
