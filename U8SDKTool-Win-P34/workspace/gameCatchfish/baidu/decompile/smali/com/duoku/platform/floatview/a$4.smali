.class Lcom/duoku/platform/floatview/a$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/floatview/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/floatview/a;


# direct methods
.method constructor <init>(Lcom/duoku/platform/floatview/a;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/floatview/a$4;->a:Lcom/duoku/platform/floatview/a;

    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 590
    iget-object v0, p0, Lcom/duoku/platform/floatview/a$4;->a:Lcom/duoku/platform/floatview/a;

    invoke-static {v0}, Lcom/duoku/platform/floatview/a;->r(Lcom/duoku/platform/floatview/a;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 614
    :goto_8
    return-void

    .line 595
    :cond_9
    iget-object v0, p0, Lcom/duoku/platform/floatview/a$4;->a:Lcom/duoku/platform/floatview/a;

    invoke-static {v0}, Lcom/duoku/platform/floatview/a;->d(Lcom/duoku/platform/floatview/a;)I

    move-result v0

    if-nez v0, :cond_17

    .line 597
    iget-object v0, p0, Lcom/duoku/platform/floatview/a$4;->a:Lcom/duoku/platform/floatview/a;

    invoke-virtual {v0}, Lcom/duoku/platform/floatview/a;->e()V

    goto :goto_8

    .line 602
    :cond_17
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/duoku/platform/floatview/a$4;->a:Lcom/duoku/platform/floatview/a;

    invoke-static {v1}, Lcom/duoku/platform/floatview/a;->e(Lcom/duoku/platform/floatview/a;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/duoku/platform/ui/DKContainerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 603
    const-string v1, "function_code"

    const/16 v2, 0x2711

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 604
    iget-object v1, p0, Lcom/duoku/platform/floatview/a$4;->a:Lcom/duoku/platform/floatview/a;

    invoke-static {v1}, Lcom/duoku/platform/floatview/a;->s(Lcom/duoku/platform/floatview/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 606
    const-string v1, "dk_operate_url"

    iget-object v2, p0, Lcom/duoku/platform/floatview/a$4;->a:Lcom/duoku/platform/floatview/a;

    invoke-static {v2}, Lcom/duoku/platform/floatview/a;->s(Lcom/duoku/platform/floatview/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 608
    :cond_42
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/floatview/a$4;->a:Lcom/duoku/platform/floatview/a;

    invoke-static {v2}, Lcom/duoku/platform/floatview/a;->e(Lcom/duoku/platform/floatview/a;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/duoku/platform/c/a;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/duoku/platform/IDKSDKCallBack;)V

    .line 611
    iget-object v0, p0, Lcom/duoku/platform/floatview/a$4;->a:Lcom/duoku/platform/floatview/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/duoku/platform/floatview/a;->c(Lcom/duoku/platform/floatview/a;Z)V

    goto :goto_8
.end method
