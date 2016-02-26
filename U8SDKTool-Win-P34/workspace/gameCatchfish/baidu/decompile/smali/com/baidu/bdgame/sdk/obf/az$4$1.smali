.class final Lcom/baidu/bdgame/sdk/obf/az$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/az$4;->onClick(Landroid/view/View;)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/az$4;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/az$4;)V
    .registers 2

    .prologue
    .line 196
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/az$4$1;->a:Lcom/baidu/bdgame/sdk/obf/az$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 196
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/az$4$1;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 200
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az$4$1;->a:Lcom/baidu/bdgame/sdk/obf/az$4;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/az$4;->a:Lcom/baidu/bdgame/sdk/obf/az;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/az;->e(Lcom/baidu/bdgame/sdk/obf/az;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cd;->m()V

    .line 201
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_53

    .line 202
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az$4$1;->a:Lcom/baidu/bdgame/sdk/obf/az$4;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/az$4;->a:Lcom/baidu/bdgame/sdk/obf/az;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/az;->e(Lcom/baidu/bdgame/sdk/obf/az;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cd;->l()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/az$4$1;->a:Lcom/baidu/bdgame/sdk/obf/az$4;

    iget-object v1, v1, Lcom/baidu/bdgame/sdk/obf/az$4;->a:Lcom/baidu/bdgame/sdk/obf/az;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/az;->e(Lcom/baidu/bdgame/sdk/obf/az;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/cd;->l()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "bdp_account_login_find_pass"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 203
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/az$4$1;->a:Lcom/baidu/bdgame/sdk/obf/az$4;

    iget-object v1, v1, Lcom/baidu/bdgame/sdk/obf/az$4;->a:Lcom/baidu/bdgame/sdk/obf/az;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/az;->e(Lcom/baidu/bdgame/sdk/obf/az;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/cd;->l()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/az$4$1;->a:Lcom/baidu/bdgame/sdk/obf/az$4;

    iget-object v2, v2, Lcom/baidu/bdgame/sdk/obf/az$4;->a:Lcom/baidu/bdgame/sdk/obf/az;

    invoke-static {v2}, Lcom/baidu/bdgame/sdk/obf/az;->e(Lcom/baidu/bdgame/sdk/obf/az;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/cd;->k()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p3}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/baidu/platformsdk/WebActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :goto_52
    return-void

    .line 206
    :cond_53
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 207
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az$4$1;->a:Lcom/baidu/bdgame/sdk/obf/az$4;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/az$4;->a:Lcom/baidu/bdgame/sdk/obf/az;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/az;->e(Lcom/baidu/bdgame/sdk/obf/az;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cd;->k()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/az$4$1;->a:Lcom/baidu/bdgame/sdk/obf/az$4;

    iget-object v1, v1, Lcom/baidu/bdgame/sdk/obf/az$4;->a:Lcom/baidu/bdgame/sdk/obf/az;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/az;->e(Lcom/baidu/bdgame/sdk/obf/az;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/cd;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_error_fail_get_address"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ln;->a(Landroid/content/Context;I)V

    goto :goto_52

    .line 209
    :cond_7b
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az$4$1;->a:Lcom/baidu/bdgame/sdk/obf/az$4;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/az$4;->a:Lcom/baidu/bdgame/sdk/obf/az;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/az;->e(Lcom/baidu/bdgame/sdk/obf/az;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cd;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/baidu/bdgame/sdk/obf/ln;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_52
.end method
