.class final Lcom/baidu/bdgame/sdk/obf/dv$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/dv;->f()V
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
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/dv;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/dv;)V
    .registers 2

    .prologue
    .line 163
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/dv$8;->a:Lcom/baidu/bdgame/sdk/obf/dv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/ao;)V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 167
    if-nez p1, :cond_4b

    .line 168
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/dv$a;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dv$8;->a:Lcom/baidu/bdgame/sdk/obf/dv;

    invoke-direct {v0, v1}, Lcom/baidu/bdgame/sdk/obf/dv$a;-><init>(Lcom/baidu/bdgame/sdk/obf/dv;)V

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dv$a;->a()V

    .line 169
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dv$8;->a:Lcom/baidu/bdgame/sdk/obf/dv;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/dv;->g(Lcom/baidu/bdgame/sdk/obf/dv;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    if-eqz p3, :cond_4a

    .line 171
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dv$8;->a:Lcom/baidu/bdgame/sdk/obf/dv;

    invoke-virtual {p3}, Lcom/baidu/bdgame/sdk/obf/ao;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/dv;->b(Lcom/baidu/bdgame/sdk/obf/dv;Ljava/lang/String;)Ljava/lang/String;

    .line 172
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dv$8;->a:Lcom/baidu/bdgame/sdk/obf/dv;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/dv;->h(Lcom/baidu/bdgame/sdk/obf/dv;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dv$8;->a:Lcom/baidu/bdgame/sdk/obf/dv;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/dv$8;->a:Lcom/baidu/bdgame/sdk/obf/dv;

    invoke-static {v2}, Lcom/baidu/bdgame/sdk/obf/dv;->a(Lcom/baidu/bdgame/sdk/obf/dv;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/dv;->c(Lcom/baidu/bdgame/sdk/obf/dv;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dv$8;->a:Lcom/baidu/bdgame/sdk/obf/dv;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/dv;->i(Lcom/baidu/bdgame/sdk/obf/dv;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dv$8;->a:Lcom/baidu/bdgame/sdk/obf/dv;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/dv;->j(Lcom/baidu/bdgame/sdk/obf/dv;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    :cond_4a
    :goto_4a
    return-void

    .line 177
    :cond_4b
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dv$8;->a:Lcom/baidu/bdgame/sdk/obf/dv;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/dv;->k(Lcom/baidu/bdgame/sdk/obf/dv;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 178
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dv$8;->a:Lcom/baidu/bdgame/sdk/obf/dv;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/dv;->k(Lcom/baidu/bdgame/sdk/obf/dv;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dv$8;->a:Lcom/baidu/bdgame/sdk/obf/dv;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/dv;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_bind_phone_check_mail_verifycode_get"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 179
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dv$8;->a:Lcom/baidu/bdgame/sdk/obf/dv;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dv;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/baidu/bdgame/sdk/obf/ln;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4a
.end method

.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 163
    check-cast p3, Lcom/baidu/bdgame/sdk/obf/ao;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/dv$8;->a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/ao;)V

    return-void
.end method
