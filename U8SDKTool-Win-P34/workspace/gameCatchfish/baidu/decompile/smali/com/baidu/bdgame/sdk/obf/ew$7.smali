.class final Lcom/baidu/bdgame/sdk/obf/ew$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ew;->f()V
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
        "Lcom/baidu/bdgame/sdk/obf/ao;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ew;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ew;)V
    .registers 2

    .prologue
    .line 147
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ew$7;->a:Lcom/baidu/bdgame/sdk/obf/ew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/ao;)V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 151
    if-nez p1, :cond_45

    .line 152
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ew$7;->a:Lcom/baidu/bdgame/sdk/obf/ew;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ew;->f(Lcom/baidu/bdgame/sdk/obf/ew;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ew$a;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ew$7;->a:Lcom/baidu/bdgame/sdk/obf/ew;

    invoke-direct {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ew$a;-><init>(Lcom/baidu/bdgame/sdk/obf/ew;)V

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ew$a;->a()V

    .line 154
    if-eqz p3, :cond_44

    .line 155
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ew$7;->a:Lcom/baidu/bdgame/sdk/obf/ew;

    invoke-virtual {p3}, Lcom/baidu/bdgame/sdk/obf/ao;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ew;->b(Lcom/baidu/bdgame/sdk/obf/ew;Ljava/lang/String;)Ljava/lang/String;

    .line 156
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ew$7;->a:Lcom/baidu/bdgame/sdk/obf/ew;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ew;->h(Lcom/baidu/bdgame/sdk/obf/ew;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ew$7;->a:Lcom/baidu/bdgame/sdk/obf/ew;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ew;->g(Lcom/baidu/bdgame/sdk/obf/ew;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ew$7;->a:Lcom/baidu/bdgame/sdk/obf/ew;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ew;->i(Lcom/baidu/bdgame/sdk/obf/ew;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ew$7;->a:Lcom/baidu/bdgame/sdk/obf/ew;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ew;->j(Lcom/baidu/bdgame/sdk/obf/ew;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    :cond_44
    :goto_44
    return-void

    .line 161
    :cond_45
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ew$7;->a:Lcom/baidu/bdgame/sdk/obf/ew;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ew;->k(Lcom/baidu/bdgame/sdk/obf/ew;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 162
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ew$7;->a:Lcom/baidu/bdgame/sdk/obf/ew;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ew;->k(Lcom/baidu/bdgame/sdk/obf/ew;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ew$7;->a:Lcom/baidu/bdgame/sdk/obf/ew;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ew;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_bind_phone_check_phone_verifycode_get"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 163
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ew$7;->a:Lcom/baidu/bdgame/sdk/obf/ew;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ew;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/baidu/bdgame/sdk/obf/ln;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_44
.end method

.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 147
    check-cast p3, Lcom/baidu/bdgame/sdk/obf/ao;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/ew$7;->a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/ao;)V

    return-void
.end method
