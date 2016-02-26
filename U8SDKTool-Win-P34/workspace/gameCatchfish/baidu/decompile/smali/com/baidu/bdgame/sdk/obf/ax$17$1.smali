.class final Lcom/baidu/bdgame/sdk/obf/ax$17$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/platformsdk/LoginActivity$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ax$17;->a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/at;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ax$17;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ax$17;)V
    .registers 2

    .prologue
    .line 443
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ax$17$1;->a:Lcom/baidu/bdgame/sdk/obf/ax$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IILandroid/content/Intent;)V
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 447
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax$17$1;->a:Lcom/baidu/bdgame/sdk/obf/ax$17;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ax$17;->a:Lcom/baidu/bdgame/sdk/obf/ax;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ax;->e(Lcom/baidu/bdgame/sdk/obf/ax;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cd;->l()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/baidu/platformsdk/LoginActivity;

    invoke-virtual {v0, v4}, Lcom/baidu/platformsdk/LoginActivity;->a(Lcom/baidu/platformsdk/LoginActivity$a;)V

    .line 448
    const/16 v0, 0x3e7

    if-ne v0, p1, :cond_20

    .line 449
    if-eqz p3, :cond_20

    const-string v0, "set_result_intent_key_result_code"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 470
    :cond_20
    :goto_20
    return-void

    .line 452
    :cond_21
    const-string v0, "set_result_intent_key_result_code"

    const/4 v1, -0x1

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 453
    const-string v0, "set_result_intent_key_result_data"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/ag;

    .line 454
    if-nez v1, :cond_55

    .line 455
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax$17$1;->a:Lcom/baidu/bdgame/sdk/obf/ax$17;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ax$17;->a:Lcom/baidu/bdgame/sdk/obf/ax;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ax;->e(Lcom/baidu/bdgame/sdk/obf/ax;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cd;->k()Landroid/content/Context;

    move-result-object v0

    .line 456
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ax$17$1;->a:Lcom/baidu/bdgame/sdk/obf/ax$17;

    iget-object v1, v1, Lcom/baidu/bdgame/sdk/obf/ax$17;->a:Lcom/baidu/bdgame/sdk/obf/ax;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ax;->e(Lcom/baidu/bdgame/sdk/obf/ax;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "bdp_passport_login"

    invoke-static {v0, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0, v4}, Lcom/baidu/bdgame/sdk/obf/cd;->b(ILjava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_20

    .line 457
    :cond_55
    const v2, 0x90ef

    if-ne v1, v2, :cond_77

    .line 459
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax$17$1;->a:Lcom/baidu/bdgame/sdk/obf/ax$17;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ax$17;->a:Lcom/baidu/bdgame/sdk/obf/ax;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ax;->e(Lcom/baidu/bdgame/sdk/obf/ax;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v0

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/mo;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ax$17$1;->a:Lcom/baidu/bdgame/sdk/obf/ax$17;

    iget-object v2, v2, Lcom/baidu/bdgame/sdk/obf/ax$17;->a:Lcom/baidu/bdgame/sdk/obf/ax;

    invoke-static {v2}, Lcom/baidu/bdgame/sdk/obf/ax;->e(Lcom/baidu/bdgame/sdk/obf/ax;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/cd;->i()Lcom/baidu/bdgame/sdk/obf/ce;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/baidu/bdgame/sdk/obf/mo;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;)V

    invoke-virtual {v0, v1, v4}, Lcom/baidu/bdgame/sdk/obf/cd;->a(Lcom/baidu/bdgame/sdk/obf/cd;Landroid/os/Bundle;)V

    goto :goto_20

    .line 460
    :cond_77
    const v2, 0x90ec

    if-ne v1, v2, :cond_93

    if-eqz v0, :cond_93

    .line 462
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/mr;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ax$17$1;->a:Lcom/baidu/bdgame/sdk/obf/ax$17;

    iget-object v2, v2, Lcom/baidu/bdgame/sdk/obf/ax$17;->a:Lcom/baidu/bdgame/sdk/obf/ax;

    invoke-static {v2}, Lcom/baidu/bdgame/sdk/obf/ax;->e(Lcom/baidu/bdgame/sdk/obf/ax;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/cd;->i()Lcom/baidu/bdgame/sdk/obf/ce;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/baidu/bdgame/sdk/obf/mr;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;Lcom/baidu/bdgame/sdk/obf/ag;)V

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/mr;->a()V

    goto :goto_20

    .line 464
    :cond_93
    const v2, 0x90ed

    if-ne v1, v2, :cond_20

    if-eqz v0, :cond_20

    .line 466
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/mr;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ax$17$1;->a:Lcom/baidu/bdgame/sdk/obf/ax$17;

    iget-object v2, v2, Lcom/baidu/bdgame/sdk/obf/ax$17;->a:Lcom/baidu/bdgame/sdk/obf/ax;

    invoke-static {v2}, Lcom/baidu/bdgame/sdk/obf/ax;->e(Lcom/baidu/bdgame/sdk/obf/ax;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/cd;->i()Lcom/baidu/bdgame/sdk/obf/ce;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/baidu/bdgame/sdk/obf/mr;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;Lcom/baidu/bdgame/sdk/obf/ag;)V

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/mr;->b()V

    goto/16 :goto_20
.end method
